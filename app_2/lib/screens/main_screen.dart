import 'package:app_2/widgets/side_menue_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: SideMenuWidget()
            ),
            Expanded(
              flex: 7,
              child: Container(color: Colors.lightBlue)
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.lightGreen)
            )
          ],
        )),
    );
  }
}