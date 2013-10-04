//import 'dart:io';
//import 'package:polymer/component_build.dart';

import 'package:polymer/builder.dart';
//import 'package:mdv/mdv.dart' as mdv;
        
main() { 
//  var args = new Options().arguments;
//  args.addAll(['--', '--deploy']);
//  build(args, ['web/dartapp.html']);
  build(entryPoints: ['web/dartapp.html'], options: parseOptions(['--deploy']));
//  build(new Options().arguments, ['web/dartapp.html']);
//  build();
//  mdv.initialize();
}