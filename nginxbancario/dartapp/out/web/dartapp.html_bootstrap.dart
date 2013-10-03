library app_bootstrap;

import 'package:polymer/polymer.dart';
import 'dart:mirrors' show currentMirrorSystem;

import 'clickcounter.dart' as i0;
import 'rssfeed.dart' as i1;
import 'dartapp.dart' as i2;

void main() {
  initPolymer([
      'clickcounter.dart',
      'rssfeed.dart',
      'dartapp.dart',
    ], currentMirrorSystem().isolate.rootLibrary.uri.toString());
}
