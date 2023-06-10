# will_it_run

A Dart package for checking if the dependencies in a Flutter project are compatible with iOS.

## Installation

Add `will_it_run` as a dev dependency in your `pubspec.yaml` file:

```yaml
dev_dependencies:
  will_it_run: ^1.0.0
```

Then, run the following command to install the package:

```bash
$ dart pub get
```

## Usage

To check if the dependencies in your Flutter project are compatible with iOS, use the following command:

```bash
$ dart run will_it_run:check_ios
```

This command will analyze your project's `pubspec.yaml` file and check if each dependency has a compatible version for iOS. It will provide a report listing the dependencies that are compatible and those that are not.

The compatibility check is based on the Flutter platform compatibility information available in the `pub.dev` package repository. It ensures that the specified versions of the dependencies have support for iOS.

## Example Output

Here's an example output of the compatibility check command:

```
Please wait while we fetch your packages...

Cupertino Icons (supported)
flutter_svg_provider (supported)
flutter_easylogger (supported)
cached_network_image (supported)
shimmer (supported)
awesome_dialog (supported)
json_serializable (not supported)
build_runner (not supported)
json_annotation (supported)

7 packages support iOS
2 packages do not support iOS
```

In this example, 7 out of 9 packages support iOS, while 2 packages do not.

## Contributing

Contributions to `will_it_run` are welcome! If you encounter any issues or have suggestions for improvements, please open an issue on the [GitHub repository](https://github.com/A7mdlbanna/will_it_run).

## License

This package is released under the [MIT License](https://opensource.org/licenses/MIT).