library app_bootstrap;

import 'package:polymer/polymer.dart';
import 'dart:mirrors' show currentMirrorSystem;

import 'rssfeed.dart' as i0;
import 'dartapp.dart' as i1;

void main() {
  initPolymer([
      'rssfeed.dart',
      'dartapp.dart',
    ], currentMirrorSystem().isolate.rootLibrary.uri.toString());
}
