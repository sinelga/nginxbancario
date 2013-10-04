//import 'dart:io';
//import 'package:polymer/component_build.dart';
import 'package:polymer/builder.dart';
//import 'package:mdv/mdv.dart' as mdv;
//import 'package:polymer/deploy.dart';
        
main() { 
//  var args = new Options().arguments;
//  args.addAll(['--', '--deploy']);
//  build(args, ['web/dartapp.html']);
//  build(entryPoints: ['web/dartapp.html','web/rssfeed.html']);
 build(entryPoints: ['web/dartapp.html'], options: parseOptions(['--deploy']));
//  build(new Options().arguments, ['web/index.html']).then((_) => deploy.main());
//  build(args, entry).then( (_) => deploy.main());
//  build(new Options().arguments, ['web/dartapp.html']);
//  build();
//  mdv.initialize();
}