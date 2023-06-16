# will_it_run

A Dart package for checking if the dependencies in a Flutter project are compatible with different platforms, including iOS, Android, Windows, macOS, Linux, and web.

## Installation

Add `will_it_run` as a dev dependency in your `pubspec.yaml` file:

```yaml
dev_dependencies:
  will_it_run: ^1.0.2
```

Then, run the following command to install the package:

```bash
$ dart pub get
```

## Usage

To check if the dependencies in your Flutter project are compatible with a specific platform, use the following command:

```bash
$ dart run will_it_run:<platform>
```

Replace `<platform>` with the desired platform, such as `ios`, `android`, `windows`, `macos`, `linux`, or `web`. This command will analyze your project's `pubspec.yaml` file and check if each dependency has a compatible version for the specified platform. It will provide a report listing the dependencies that are compatible and those that are not.

The compatibility check is based on the Flutter platform compatibility information available in the `pub.dev` package repository. It ensures that the specified versions of the dependencies have support for the target platform.


## Example Output

Here's an example output of the compatibility check command for different platforms:

### iOS

![iOS](https://raw.githubusercontent.com/A7mdlbanna/will_it_run/main/assets/ios.png)

In this example, 7 out of 9 packages support iOS, while 2 packages do not.

### macOS

![macOS](https://raw.githubusercontent.com/A7mdlbanna/will_it_run/main/assets/macos.png)

In this example, all packages support macOS.

## Contributing

Contributions to `will_it_run` are welcome! If you encounter any issues or have suggestions for improvements, please open an issue on the [GitHub repository](https://github.com/A7mdlbanna/will_it_run).