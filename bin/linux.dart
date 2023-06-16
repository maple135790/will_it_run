import 'package:will_it_run/src/platform.dart';
import 'package:will_it_run/will_it_run.dart';

Future<void> main(List<String> arguments) async {
  await WillItRun().check(Platform.linux);
}
