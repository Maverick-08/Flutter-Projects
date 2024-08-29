import 'package:app_2/models/menue_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenueModel>[
    MenueModel(icon: Icons.home, title: 'Dashboard'),
    MenueModel(icon: Icons.person, title: 'Profile'),
    MenueModel(icon: Icons.run_circle, title: 'Exersice'),
    MenueModel(icon: Icons.settings, title: 'Settings'),
    MenueModel(icon: Icons.history, title: 'History'),
    MenueModel(icon: Icons.logout, title: 'SignOut'),
  ];
}