import 'package:flutter/material.dart'; // This line imports the material.dart package, which contains the Material Design components and features. Material Design is a design language developed by Google, and it's used to create visually consistent UIs across devices and platforms.

void main() { // Entry point
  runApp(const MyApp());
  // runApp() is a built-in Flutter function that takes a Widget as its argument and makes it the root of the widget tree. In this case, it takes an instance of MyApp
}

// MyApp is a custom widget that extends StatelessWidget. A StatelessWidget is a widget that doesn't maintain any state of its own. It's immutable, meaning that its properties can't change after the widget is built.
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // This is the constructor for the MyApp class. The const keyword indicates that this widget can be instantiated as a compile-time constant. The {super.key} part is used to pass a key to the parent StatelessWidget constructor, which can help Flutter identify and differentiate between widget instances during updates.

  @override
  Widget build(BuildContext context) { // The build method is responsible for describing the widget tree that will be rendered by this widget. This method returns a Widget, which becomes the UI of the MyApp widget.

  // The build method returns a MaterialApp widget. MaterialApp is a wrapper that provides several important features, such as navigation, theming, and localization, for the application.
    return const MaterialApp();
  }
}
