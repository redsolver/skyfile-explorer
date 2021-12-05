import 'file_icons.dart';
import 'folder_icons.dart';

String detectIcon(String name, {required bool isDirectory}) {
  final lowercaseName = name.toLowerCase();

  if (isDirectory) {
    for (final folderIcon in folderIcons['icons']) {
      if (folderIcon['folderNames'].contains(lowercaseName)) {
        return folderIcon['name'];
      }
    }
    return 'folder';
  } else {
    final ext = lowercaseName.split('.').last;

    for (final fileIcon in (fileIcons['icons'] as List)) {
      if ((fileIcon['fileNames'] ?? []).contains(lowercaseName) ||
          (fileIcon['fileExtensions'] ?? []).contains(ext) ||
          fileIcon['name'] == ext) {
        return fileIcon['name'];
      }
    }
    return 'file';
  }
}
