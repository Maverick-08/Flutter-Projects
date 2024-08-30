import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system); // Initial State

  // Function to change state
  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  // Convert JSON to ThemeMode
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    switch (json['themeMode'] as String) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

  // Convert ThemeMode to JSON
  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {
      'themeMode': state.toString().split('.').last,
    };
  }
}
