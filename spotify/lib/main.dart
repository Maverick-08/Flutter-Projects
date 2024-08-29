import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; // This line imports the material.dart package, which contains the Material Design components and features. Material Design is a design language developed by Google, and it's used to create visually consistent UIs across devices and platforms.
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify/core/configs/themes/app_theme.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:spotify/presentation/splash/splash.dart';

Future<void> main() async {
  // Hydrated Bloc is an extension of the Bloc library in Flutter/Dart that enables automatic persistence of the state. This is useful when you want to preserve the state of your application across app restarts, without requiring manual implementation of caching or storage mechanisms.
  // 1. State Persistence: With Hydrated Bloc, the state of a Bloc or Cubit is automatically persisted to a storage medium (typically local storage). When the app restarts, the last saved state is restored.
  // 2. Serialization: The state needs to be serialized (converted into a storable format like JSON) and deserialized (converted back to the original state). Hydrated Bloc provides mechanisms to handle this automatically.

  // 3. Storage Provider: By default, Hydrated Bloc uses HydratedStorage with Hive under the hood for storing the state locally. However, it allows you to customize the storage solution.
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that the Flutter engine is initialized before running the app.
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  runApp(
      const MyApp()); // runApp() is a built-in Flutter function that takes a Widget as its argument and makes it the root of the widget tree. In this case, it takes an instance of MyApp
}

// MyApp is a custom widget that extends StatelessWidget. A StatelessWidget is a widget that doesn't maintain any state of its own. It's immutable, meaning that its properties can't change after the widget is built.
class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); // This is the constructor for the MyApp class. The const keyword indicates that this widget can be instantiated as a compile-time constant. The {super.key} part is used to pass a key to the parent StatelessWidget constructor, which can help Flutter identify and differentiate between widget instances during updates.

  @override
  Widget build(BuildContext context) {
    // The build method is responsible for describing the widget tree that will be rendered by this widget. This method returns a Widget, which becomes the UI of the MyApp widget.

    // The build method returns a MaterialApp widget. MaterialApp is a wrapper that provides several important features, such as navigation, theming, and localization, for the application.
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ThemeCubit())
        ],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, mode) => MaterialApp(
                  themeMode: mode,
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  debugShowCheckedModeBanner: false,
                  home: const SplashScreen(),
                )));
  }
}
