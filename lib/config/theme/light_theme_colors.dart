import 'package:flutter/material.dart';

class LightThemeColors {
  //dark swatch
  // static const Color customPrimaryColor = Color(0xFF6b63ff);

  // static Color customPrimaryColor = const Color(0xFF0f71cb);
  static Color customPrimaryColor = const Color(0xFF007aff);
  static Color customSecondaryColor = const Color(0xFF016ee5);
  static Color customTertiaryColor = const Color(0xFF98bafa);

  static Color primaryColor = customPrimaryColor;
  static Color secondaryColor = customSecondaryColor;
  static Color tertiaryColor = customTertiaryColor;

  //SCAFFOLD
  // static const Color scaffoldBackgroundColor = Color(0xFFFFFFFF); //? White
  static const Color scaffoldBackgroundColor = Color(0xFFfbfbfb); //?
  // static const Color scaffoldBackgroundColor = Color(0xFFf5f5f5); //? Light Gray
  // static const Color scaffoldBackgroundColor = Color(0xFFF8F8F8); //? Off-White
  // static const Color scaffoldBackgroundColor = Color(0xFFECEFF1); //? Light Blue
  // static const Color scaffoldBackgroundColor = Color(0xFFEDEDED); //? Pale Gray
  // static const Color scaffoldBackgroundColor = Color(0xFFF0F0F0); //? Light Gray
  // static const Color scaffoldBackgroundColor = Color(0xFFFAFAFA); //? Off white

  static const Color backgroundColor = Colors.white;
  static const Color dividerColor = Color(0xFFE4E4E4);
  static const Color cardColor = Colors.white;

  //APPBAR
  // static Color appBarColor = const Color(0xFFe65203);
  static Color appBarColor = Colors.white;

  //ICONS
  static Color appBarIconsColor = primaryColor;
  static Color iconColor = primaryColor;

  //BUTTON
  static Color buttonColor = customSecondaryColor;
  static const Color buttonTextColor = Colors.white;
  static const Color buttonDisabledColor = Colors.grey;
  static const Color buttonDisabledTextColor = Colors.black;

  //TEXT
  static const Color bodyTextColor = Colors.black;
  static const Color headlinesTextColor = Colors.black;
  static const Color captionTextColor = Colors.grey;
  static const Color hintTextColor = Color(0xff686868);

  //chip
  static Color chipBackground = primaryColor;
  static const Color chipTextColor = Colors.white;

  // progress bar indicator
  // static const Color progressIndicatorColor = Color(0xFF40A76A);
  static Color progressIndicatorColor = customSecondaryColor;
}
