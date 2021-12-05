import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'dart:js_util';
import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:filesize/filesize.dart';
import 'package:skyfile_explorer/js.dart';
import 'package:skyfile_explorer/material_icons/detect_icon.dart';
import 'package:skynet/skynet.dart';
import 'package:skynet/src/crypto.dart';
import 'package:skynet/src/utils/base32.dart';
import 'package:skynet/src/utils/convert.dart';
import 'package:skynet/src/mysky/tweak.dart';
import 'package:http/http.dart' as http;

final resolverSkylinkElement = document.getElementById('resolverSkylink')!;
final staticSkylinkElement = document.getElementById('staticSkylink')!;
final hnsDomainElement = document.getElementById('hnsDomain')!;
final reverseLookupElement = document.getElementById('reverseLookup')!;

final skynetClient = SkynetClient();

var subfiles = <String, Map>{};

const esc = HtmlEscape();

String skylinkBaseHost = '';
String currentStaticSkylink = '';

void hide(Element el) {
  el.style.display = 'none';
}

void show(Element el) {
  el.style.display = 'block';
}

void main() {
  final TextInputElement element =
      document.getElementById('mainInput')! as TextInputElement;
  var initialValue = window.location.hash;

  if (initialValue.startsWith('#')) initialValue = initialValue.substring(1);

  element.value = initialValue;

  checkText(initialValue);

  getChildren = allowInterop(getChildrenLocal);

  element.addEventListener('input', (event) {
    final value = element.value ?? '';
    window.location.hash = value;
    checkText(value);
  });
}

final base64SkylinkRegexp = RegExp(r'[A-Za-z0-9\-_]{44,48}');
final base32SkylinkRegexp = RegExp(r'[a-z0-9]{50,60}');
final hnsDomainRegex = RegExp(r'[a-zA-Z0-9\-]+\.hns');

void checkText(String value) {
  hide(resolverSkylinkElement);
  hide(staticSkylinkElement);
  hide(hnsDomainElement);
  hide(reverseLookupElement);

  if (value.isNotEmpty) {
    document.getElementById('tutorialCard')!.style.display = 'none';
  } else {
    document.getElementById('tutorialCard')!.style.display = '';
  }

  var match2 = base32SkylinkRegexp.stringMatch(value);

  if (match2 != null) {
    // print(match2);
    while (match2!.length % 2 != 0) {
      match2 += '=';
    }
    processSkylink(base32.decode(match2));
    // encodeSkylinkToBase32
    return;
  }

  final match = base64SkylinkRegexp.stringMatch(value);
  if (match != null) {
    processSkylink(convertSkylinkToUint8List(match));
    return;
  }

  final hnsMatch = hnsDomainRegex.stringMatch(value);

  if (hnsMatch != null) {
    processHNSDomain(hnsMatch);
  }
}

void processHNSDomain(String domain) async {
  print('processHNSDomain $domain');

  final res = await http.get(
    Uri.parse(
      'https://${skynetClient.portalHost}/hnsres/${domain.substring(0, domain.length - 4)}',
    ),
  );

  /* print(res.statusCode);
  print(res.body); */
  if (res.statusCode == 200) {
    final data = json.decode(res.body);
    final skylink = data['skylink'] as String;

    var html = '''''';

    html += '''
    <h2>${domain}</h2>
    <div class="result">${res.body}</div>

    ''';

    hnsDomainElement.setInnerHtml(
      html,
      validator: TrustedNodeValidator(),
    );

    show(hnsDomainElement);

    processSkylink(convertSkylinkToUint8List(skylink.substring(6)));
  } else {}
  //  https://${skynetClient.portalHost}/skynet/health/skylink/SKYLINK?timeout=5
  // https://${skynetClient.portalHost}/skynet/health/skylink/SKYLINK
}

void processSkylink(Uint8List bytes) async {
  if (bytes.length != 34) return;

  print('processSkylink $bytes');
  final base64Skylink = base64Url.encode(bytes).replaceAll('=', '');
  final res = await http.get(
    Uri.parse(
      'https://${skynetClient.portalHost}/skynet/resolve/$base64Skylink',
    ),
  );

  if (res.statusCode == 200) {
    final data = json.decode(res.body);
    processStaticSkylink(data['skylink']);

    var html = '''''';

    html += '''
    <h2>Resolver Skylink</h2>
${renderSkylinkDetails(bytes)}
    ''';

    resolverSkylinkElement.setInnerHtml(
      html,
      validator: TrustedNodeValidator(),
    );

    show(resolverSkylinkElement);
  } else {
    processStaticSkylink(base64Skylink, true);
  }
}

String renderSkylinkDetails(Uint8List bytes) {
  final base64Skylink = base64Url.encode(bytes).replaceAll('=', '');

  return '''    <div class="result">Skylink: ${base64Skylink}</div>
    <div class="result">${createLinkElement('https://${skynetClient.portalHost}/${base64Skylink}')}</div>

    <h3>Base32</h3>
    <div class="result">${encodeSkylinkToBase32(bytes)}</div>
    <div class="result">${createLinkElement('https://${encodeSkylinkToBase32(bytes)}.${skynetClient.portalHost}')}</div>''';
}

String createLinkElement(String url) {
  return '<a href="$url" target="_blank">$url</a>';
}

String? _currentLoadSkylink;
void loadSkylinkHealth(String skylink) async {
  final res = await http.get(
    Uri.parse(
      'https://${skynetClient.portalHost}/skynet/health/skylink/$skylink?timeout=5',
    ),
  );

  if (_currentLoadSkylink == skylink) {
    final data = json.decode(res.body);
    print(data);
  }
}

void executeReverseLookup(String staticSkylink) async {
  // ! Maybe do it async
  final datakey = deriveDiscoverableTweak('reverse-lookup/$staticSkylink');

  final res = await skynetClient.registry.getEntry(
    SkynetUser.fromId(
        'a73e5e56f69e025b7bde1c816311b14f141d63a7b7cbd4dda0294755f402ec21'),
    '',
    hashedDatakey: hex.encode(datakey),
  );
  if (res?.entry != null) {
    var html = '''
      <h2>Reverse lookup: Found resolver skylink</h2>
      ${renderSkylinkDetails(res!.entry.data)}

  ''';

    reverseLookupElement.setInnerHtml(
      html,
      validator: TrustedNodeValidator(),
    );
    show(reverseLookupElement);
  }
}

void processStaticSkylink(String staticSkylink,
    [bool doReverseLookup = false]) async {
  // _currentLoadSkylink = staticSkylink;
  // loadSkylinkHealth(staticSkylink);
  if (doReverseLookup) {
    executeReverseLookup(staticSkylink);
  }
  var html = '''
      <h2>Static Skylink</h2>

  ''';

  final metadataRes = await http.get(
    Uri.parse(
      'https://${skynetClient.portalHost}/skynet/metadata/$staticSkylink',
    ),
  );

  final metadata = json.decode(metadataRes.body);

  html += '''
<div class="result">File name: ${esc.convert(metadata['filename'])}</div>
<div class="result">Size: ${filesize(metadata['length'])}</div>
<div class="result">tryFiles: ${esc.convert(json.encode(metadata['tryfiles'] ?? []))}</div>
<div class="result">errorPages: ${esc.convert(json.encode(metadata['errorpages'] ?? {}))}</div>
''';

  final bytes = convertSkylinkToUint8List(staticSkylink);
  final base32Skylink = encodeSkylinkToBase32(bytes);

  skylinkBaseHost = 'https://${base32Skylink}.${skynetClient.portalHost}';
  currentStaticSkylink = 'https://${skynetClient.portalHost}/${staticSkylink}';
  html += '''
    <div class="result">Skylink: ${staticSkylink}</div>
    <div class="result">${createLinkElement(currentStaticSkylink)}</div>

    <h3>Base32</h3>
    <div class="result">${base32Skylink}</div>
    <div class="result">${createLinkElement(skylinkBaseHost)}</div>
    ''';

  subfiles = metadata['subfiles'].cast<String, Map>();

  html += '''
      <h3>Directory tree</h3>
      <div id="tree"></div>
  <script type="module">
    import { VanillaTreeView } from '/treeview.vanilla.js';
    let tree = new VanillaTreeView(document.getElementById('tree'), {
      provider: {
        async getChildren(id) {
          return window.getChildren(id);
        
        }
      }
    });
  </script>''';

  staticSkylinkElement.setInnerHtml(
    html,
    validator: TrustedNodeValidator(),
  );
  show(staticSkylinkElement);
}

dynamic getChildrenLocal(String? id) {
  print('getChildrenLocal $id');

  id ??= '';
  final list = <Map>[];
  final level = id.split('/').length - 1;
/*  */
  final exisDirs = <String>[];

  bool isDirectory = subfiles.length > 1;

  for (final item in subfiles.values) {
    var filename = (item['filename'] as String);
    if (id.isNotEmpty) {
      if (!'$filename'.startsWith('$id/')) continue;
    }

    if (filename.startsWith('/')) {
      filename = filename.substring(1);
    }

    var subPath = '$filename'.substring(id.length);
    if (subPath.startsWith('/')) {
      subPath = subPath.substring(1);
    }

    if (subPath.contains('/')) {
      print(subPath);
      final dirName = subPath.split('/').first;
      print(dirName);
      if (exisDirs.contains(dirName)) continue;
      exisDirs.add(dirName);
      list.add(
        {
          'id': id.isEmpty ? dirName : (id + '/' + dirName),
          'label': dirName,
          'icon': {
            'src':
                'https://04033l4u1g4qra7s7dvgo9ih7c1d0o8e2et9nk6c2al7r5i9lb6qk5o.${skynetClient.portalHost}/${detectIcon(dirName, isDirectory: true)}.svg',
          },
          'state': 'expanded'
        },
      );
      continue;
    }

    final basename = filename.split('/').last;

    list.add({
      'id': filename,
      'label': basename + ' (${filesize(item['len'])})',
      'link':
          isDirectory ? '${skylinkBaseHost}/$filename' : currentStaticSkylink,
      'icon': {
        'src':
            'https://04033l4u1g4qra7s7dvgo9ih7c1d0o8e2et9nk6c2al7r5i9lb6qk5o.${skynetClient.portalHost}/${detectIcon(basename, isDirectory: false)}.svg',
      }
    });
  }

  return jsify(list);
}

class TrustedNodeValidator implements NodeValidator {
  @override
  bool allowsElement(Element element) => true;
  @override
  bool allowsAttribute(element, attributeName, value) => true;
}
