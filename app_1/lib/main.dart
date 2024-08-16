import 'package:flutter/material.dart';
import 'package:app_1/screens/loggedOut.dart';
import 'package:app_1/screens/login.dart';
import 'package:app_1/screens/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoggedOut(),
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register()
      },
    );
  }
}