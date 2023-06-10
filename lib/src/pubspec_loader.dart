import 'dart:io';

List<String> loadPubspec(){
  // Get the URI of the entry point script
  var scriptUri = Platform.script;

  // Get the path to the project directory
  var projectDir = Directory.fromUri(scriptUri).parent.parent.parent.parent.parent;

  // Construct the path to the pubspec.yaml file
  var pubspecPath = '${projectDir.path}/pubspec.yaml';

  // Read the pubspec.yaml file
  var pubspecFile = File(pubspecPath);
  var pubspecContent = pubspecFile.readAsStringSync();

  // split the content into lines
  final lines = pubspecContent.split("\n");

  // return pubspec lines
  return lines;
}