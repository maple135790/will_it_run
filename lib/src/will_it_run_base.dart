import 'package:will_it_run/src/check_packages.dart';

import 'pubspec_loader.dart';
import 'extract_packages.dart';

class WillItRun {
  Future<void> check() async {
    final lines = loadPubspec();
    final packages = extractPackages(lines);
    await checkPackages(packages);
  }
}
