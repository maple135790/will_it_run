import 'package:will_it_run/src/check_packages.dart';

import 'extract_packages.dart';
import 'platform.dart';
import 'pubspec_loader.dart';

class WillItRun {
  Future<void> check(Platform platform) async {
    final lines = loadPubspec();
    final packages = extractPackages(lines);
    await checkPackages(packages, platform);
  }
}
