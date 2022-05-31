# Hollow

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]

Hollow assessment app

---

## Getting Started 🚀

Hollow contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Hollow works on iOS, Android._

### Setting up asset folders
Make sure to add the Config folder under the root/assets folder. The config_example folder provides a guide.
Any value works for both 'baseUrl' and 'auth_token' for now.

---

## Using Device Preview
Hollow relies on [device_preview][device_preview_link] to approximate how the app performs across a wide range of devices.
On Hollow, running the development flavour in debug mode will enable [device_preview][device_preview_link]
It's recommended to run on a large screen device or simulator to utilize device_preview extensively.

---

## Working with Translations 🌐

Hollow relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Current Supported Languages
Hollow supports three languages : English(en), French(fr) and Spanish(es). You can test out the language translations using the tool bar on [device_preview][device_preview_link] or changing your device's current locale if you are running without [device_preview][device_preview_link] enabled.

### Dart Analyis issues
Sometimes, vscode highlights translation strings and variables with error messages. This is a popular issue. To fix it, you restart the dart analysis server as shown [here][fix_localization_errors]. Alternatively, you can close and reopen the project.

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:hollow/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## 🚀 Technologies

- [Flutter v2.8.1]
- Dart v2.16.2


[coverage_badge]: coverage_badge.svg
[device_preview_link]: https://github.com/aloisdeniel/flutter_device_preview
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[fix_localization_errors]: https://stackoverflow.com/questions/69578784/how-can-i-fix-flutter-localizations-error-on-the-vscode-target-of-uri-doesnt
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
