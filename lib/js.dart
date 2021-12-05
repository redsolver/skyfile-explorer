@JS()
library callable_function;

import 'package:js/js.dart';

/// Allows assigning a function to be callable from `window.clickjs()`
@JS('getChildren')
external set getChildren(void Function(String id) f);

/* @JS('prompt')
external dynamic prompt(String s);
 */