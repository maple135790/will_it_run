List<String> extractPackages(List<String> lines) {
  List<String> packages = [];

  /// flag for checking `dependencies:` tag
  bool cont = true;

  for (var line in lines) {
    // check if reached the start of dependencies
    if (cont) {
      if (line.trim() == 'dependencies:') cont = false;
      continue;
    }

    // ignore Git & SDK dependencies & empty lines
    // TODO: store Git & SDK dependencies
    if (cont ||
        line.trim().isEmpty ||
        line.trim().startsWith('#') ||
        line.trim().startsWith('git') ||
        line.trim().startsWith('url') ||
        line.trim().startsWith('sdk')) continue;

    // reached end of dependencies
    if (!line.startsWith(' ')) break;

    // ignore empty packages
    if (line.trim().endsWith(':')) continue;

    // extract package name
    line = line.trim().substring(0, line.trim().indexOf(':'));
    packages.add(line);
  }
  return packages;
}
