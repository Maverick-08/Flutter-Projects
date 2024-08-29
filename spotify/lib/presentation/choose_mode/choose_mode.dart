import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Stack widget allows you to place widgets on top of each other. It's similar to the concept of layers, where widgets are positioned relative to the edges of the stack or on top of each other.
      body: Stack(
        children: [
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
                      AppImages.chooseModeBg,
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
                  'Choose Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<ThemeCubit>()
                                .updateTheme(ThemeMode.dark);
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(AppVectors.moon,
                                fit: BoxFit.none),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Dark mode",
                          style: TextStyle(fontSize: 16, color: AppColors.grey),
                        )
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            context
                                .read<ThemeCubit>()
                                .updateTheme(ThemeMode.light);
                          },
                          child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(AppVectors.sun,
                              fit: BoxFit.none),
                        ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Light mode",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                BasicAppButton(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseMode()));
                }, "Continue", 72)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
