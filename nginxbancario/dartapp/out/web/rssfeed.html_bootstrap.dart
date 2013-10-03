library app_bootstrap;

import 'package:polymer/polymer.dart';
import 'dart:mirrors' show currentMirrorSystem;

import 'rssfeed.dart' as i0;

void main() {
  initPolymer([
      'rssfeed.dart',
    ], currentMirrorSystem().isolate.rootLibrary.uri.toString());
}
