import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/pages/get_started.dart';

// The StatefulWidget class itself is immutable, meaning that once it’s 
//created, it doesn’t change. However, it creates a mutable state object (State) that can change.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  // The State class is where the mutable state is stored. This class is 
  //responsible for holding any values that can change during the widget’s 
  //lifecycle and for rebuilding the widget when these values change.
}

class _SplashScreenState extends State<SplashScreen> {
  //  ->  initState is a lifecycle method
  @override
  void initState() { // Called when the state object is first created. 
// It’s the best place to initialize any data or start any background 
// tasks that are needed for this widget.
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) { // Called every time the widget 
  // needs to be rebuilt.
    return Scaffold(
      body: Center(child: SvgPicture.asset(AppVectors.logo)),
    );
  }

  // Future in Dart is a core class used for handling asynchronous operations. 
  // It represents a value that might be available now, in the future, or never.
  // The Future class is particularly useful for operations that take time,
  // such as fetching data from the internet, reading from a database,
  // or delaying for a few seconds.
  Future<void> redirect() async {
    // Future<void> This method signature indicates that redirect() is an 
    // asynchronous function that returns a Future. The void part 
    // indicates that this function doesn't return a value
    // (it just performs an action).
    await Future.delayed(const Duration(seconds: 2));
    // After the delay, this line of code is executed, replacing the current screen (the splash screen) with the GetStarted screen. The pushReplacement method ensures that the splash screen is removed from the navigation stack, so users cannot return to it.
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const GetStarted()));
  }
}
