import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // We're going to define all of our font styles
  // in this method:
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 40.0,
        color: const Color(0xFF807A6B),
      ),
      // Used for the recipes' title:
      subtitle1: base.headline6?.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 15.0,
        color: const Color(0xFF807A6B),
      ),
      // Used for the recipes' duration:
      caption: base.caption?.copyWith(
        color: const Color(0xFFCCC5AF),
      ),
    );
  }

  // We want to override a default light blue theme.
  final ThemeData base = ThemeData.light();

  // And apply changes on it:
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: const Color(0xFFFFF8E1),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    iconTheme: const IconThemeData(
      color: Color(0xFFCCC5AF),
      size: 20.0,
    ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFFFF8E1)),
  );
}
