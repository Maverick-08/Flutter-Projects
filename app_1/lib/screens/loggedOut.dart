import 'package:flutter/material.dart';

class LoggedOut extends StatelessWidget {
  const LoggedOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
                width: screenWidth,
                height: 0.85 * screenHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover),
                )),
            Container(
              width: screenWidth,
              margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                      text: 'Log In',
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      paddingLeft: 16,
                      paddingRight: 16,
                      paddingTop: 2,
                      paddingBottom: 2,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      }),
                  CustomButton(
                      text: 'Register',
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                      paddingLeft: 16,
                      paddingRight: 16,
                      paddingTop: 2,
                      paddingBottom: 2,
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  }
}
