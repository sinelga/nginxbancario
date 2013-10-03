library app_bootstrap;

import 'package:polymer/polymer.dart';
import 'dart:mirrors' show currentMirrorSystem;

import 'clickcounter.dart' as i0;

void main() {
  initPolymer([
      'clickcounter.dart',
    ], currentMirrorSystem().isolate.rootLibrary.uri.toString());
}
