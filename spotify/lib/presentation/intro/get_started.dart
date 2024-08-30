import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/appbar/appbar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';
import 'package:spotify/presentation/choose_mode/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Stack widget allows you to place widgets on top of each other. It's similar to the concept of layers, where widgets are positioned relative to the edges of the stack or on top of each other.
      body: Stack(
        children: [
          const Appbar(),
          // The Container widget is a versatile widget in Flutter that can
          // contain a single child and allows you to apply padding, margins,
          // decoration (allows you to set backgroung Image, borders and other
          // decorations)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImages.introBg,
                    ))),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            // The Padding widget in Flutter is used to add empty space (padding) around its child widget. It’s a simple way to add space inside a layout.
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseMode()));
                }, "Get Started", 72)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
