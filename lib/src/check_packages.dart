import 'package:pub_api_client/pub_api_client.dart';
import 'package:will_it_run/src/platform.dart';

final green = '\x1B[32m';
final red = '\x1B[31m';
final blue = '\x1B[34m';
final yellow = '\x1B[33m';
final reset = '\x1B[0m';

Future<void> checkPackages(List<String> packages, Platform platform) async {
  if (packages.isEmpty) {
    print('${yellow}Your project does not use any packages$reset');
    return;
  }
  final client = PubClient();
  print('Please wait till we fetch your packages');

  int supportedPackages = 0;
  int notSupported = 0;
  for (var package in packages) {
    final platformPackages =
        await client.search('platform%3A${platform.name}+$package');

    final supported = platformPackages.packages.isNotEmpty &&
        platformPackages.packages[0].package == package;
    supported ? supportedPackages++ : notSupported++;

    print((supported ? green : red) +
        package +
        (supported ? ' (supported)' : ' (not supported)$reset URL: https://pub.dev/packages/$package') +
        reset);
  }
  print('');
  print(
      '$blue$supportedPackages$reset$green packages supports ${platform.name.toUpperCase()}$reset');
  print(
      '$blue$notSupported$reset$red packages doesn\'t support ${platform.name.toUpperCase()}$reset');
  return;
}
