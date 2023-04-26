<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A custom implementation of the text selection toolbar in Flutter with support for adding custom backgrounds, paddings and border radius to Cupertino buttons.

A text selection toolbar or a context menu, is the little menu that pops-up when the user long presses the text field or selects a piece of text from that text field. This menu gives a user the ability to manipulate an editable text. Customizing it according to your app appearence, could improve your design.

## Features

With this package, you can customize the various different appearence of a context menu for your `TextField`.
1. Change the background color of a button, by using the `backgroundColor` property
2. Change the background color of a disabled button, by using the `disabledColor` property
3. Change the border radius with `borderRadius` property
4. Change the padding of a button to make it look bigger, by using the `buttonPadding` property

## Getting started

1. Add the `custom_context_menu` package to your `pubspec.yaml` file:
```yaml
dependencies:
  custom_context_menu: ^0.1.0
```
2. Import the package in your Dart file:
```dart
import 'package:custom_context_menu/custom_context_menu.dart';
```

## Usage

Use the `CustomContextMenu` widget inside your `TextField`'s `contextMenuBuilder` property:
```dart
TextField(
  enableInteractiveSelection: true,
  contextMenuBuilder: (BuildContext context, EditableTextState editableTextState) {
    return CustomContextMenu(
      editableTextState: editableTextState,
      backgroundColor: Colors.red,
      disabledColor: Colors.grey,
      borderRadius: 6.0,
      buttonPadding: 6.0,
      );
  }
);
```

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## Additional information

This is an on-going project. Looking forward for any contribution and help. New features are coming soon.
