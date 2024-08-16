import 'package:flutter/material.dart';
import 'package:app_1/widgets/customButton.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: 0.5 * screenHeight,
        margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Register',
                style: TextStyle(fontSize: 36, color: Colors.black),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16), // Use height for vertical spacing
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30), // Use height for vertical spacing
                  CustomButton(
                    text: 'Register',
                    textColor: Colors.white,
                    paddingLeft: 0,
                    paddingTop: 4,
                    paddingRight: 0,
                    paddingBottom: 4,
                    backgroundColor: Colors.black,
                    onPressed: () {
                      // Handle log in action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}