import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'dark_theme_colors.dart';
import 'my_fonts.dart';
import 'light_theme_colors.dart';

class MyStyles {
  ///icons theme
  static IconThemeData getIconTheme({required bool isLightTheme}) =>
      IconThemeData(
        color: isLightTheme
            ? LightThemeColors.iconColor
            : DarkThemeColors.iconColor,
      );

  /// input theme
  static InputDecorationTheme getInputTheme({required bool isLightTheme}) =>
      InputDecorationTheme(
        prefixIconColor: isLightTheme
            ? LightThemeColors.primaryColor
            : DarkThemeColors.primaryColor,
        suffixIconColor: isLightTheme
            ? LightThemeColors.primaryColor
            : DarkThemeColors.primaryColor,
        focusColor: isLightTheme
            ? LightThemeColors.primaryColor
            : DarkThemeColors.primaryColor,
      );

  ///app bar theme
  static AppBarTheme getAppBarTheme({required bool isLightTheme}) =>
      AppBarTheme(
        elevation: 0,
        foregroundColor: isLightTheme
            ? LightThemeColors.appBarIconsColor
            : DarkThemeColors.appBarIconsColor,
        toolbarTextStyle:
            getTextTheme(isLightTheme: isLightTheme).bodyLarge!.copyWith(
                  color: isLightTheme
                      ? LightThemeColors.appBarIconsColor
                      : DarkThemeColors.appBarIconsColor,
                  fontSize: MyFonts.appBarTittleSize,
                ),
        titleTextStyle:
            getTextTheme(isLightTheme: isLightTheme).titleLarge!.copyWith(
                  color: isLightTheme
                      ? LightThemeColors.appBarIconsColor
                      : DarkThemeColors.appBarIconsColor,
                  fontSize: MyFonts.appBarTittleSize,
                ),
        centerTitle: true,
        actionsIconTheme: IconThemeData(
          color: isLightTheme
              ? LightThemeColors.appBarIconsColor
              : DarkThemeColors.appBarIconsColor,
        ),
        iconTheme: IconThemeData(
          color: isLightTheme
              ? LightThemeColors.appBarIconsColor
              : DarkThemeColors.appBarIconsColor,
        ),
        backgroundColor: isLightTheme
            ? LightThemeColors.appBarColor
            : DarkThemeColors.appBarColor,
      );

  ///List Tile
  static ListTileThemeData getListTileTheme({required bool isLightTheme}) =>
      const ListTileThemeData();

  ///text theme
  static TextTheme getTextTheme({required bool isLightTheme}) => TextTheme(
        bodyLarge: Get.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        bodyMedium: Get.textTheme.bodyMedium?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        bodySmall: Get.textTheme.bodySmall?.copyWith(
          color: isLightTheme
              ? LightThemeColors.hintTextColor
              : DarkThemeColors.hintTextColor,
        ),
        displayLarge: Get.textTheme.displayLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        displayMedium: Get.textTheme.displayMedium?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        displaySmall: Get.textTheme.displaySmall?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        headlineLarge: Get.textTheme.headlineLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        headlineMedium: Get.textTheme.headlineMedium?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        headlineSmall: Get.textTheme.headlineSmall?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        titleLarge: Get.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        titleMedium: Get.textTheme.titleMedium?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        titleSmall: Get.textTheme.titleSmall?.copyWith(
          color: isLightTheme
              ? LightThemeColors.bodyTextColor
              : DarkThemeColors.bodyTextColor,
        ),
        labelSmall: Get.textTheme.labelSmall?.copyWith(
          color: isLightTheme
              ? LightThemeColors.captionTextColor
              : DarkThemeColors.captionTextColor,
        ),
      );

  static ChipThemeData getChipTheme({required bool isLightTheme}) {
    return ChipThemeData(
      backgroundColor: isLightTheme
          ? LightThemeColors.chipBackground
          : DarkThemeColors.chipBackground,
      brightness: Brightness.light,
      labelStyle: getChipTextStyle(isLightTheme: isLightTheme),
      secondaryLabelStyle: getChipTextStyle(isLightTheme: isLightTheme),
      selectedColor: Colors.black,
      disabledColor: Colors.green,
      padding: EdgeInsets.all(5),
      secondarySelectedColor: Colors.purple,
    );
  }

  ///Chips text style
  static TextStyle getChipTextStyle({required bool isLightTheme}) {
    return MyFonts.chipTextStyle.copyWith(
      fontSize: MyFonts.chipTextSize,
      color: isLightTheme
          ? LightThemeColors.chipTextColor
          : DarkThemeColors.chipTextColor,
    );
  }

  // elevated button text style
  static MaterialStateProperty<TextStyle?>? getElevatedButtonTextStyle(
      bool isLightTheme,
      {bool isBold = true,
      double? fontSize}) {
    return MaterialStateProperty.resolveWith<TextStyle>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return MyFonts.buttonTextStyle.copyWith(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: fontSize ?? MyFonts.buttonTextSize,
              color: isLightTheme
                  ? LightThemeColors.buttonTextColor
                  : DarkThemeColors.buttonTextColor);
        } else if (states.contains(MaterialState.disabled)) {
          return MyFonts.buttonTextStyle.copyWith(
              fontSize: fontSize ?? MyFonts.buttonTextSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isLightTheme
                  ? LightThemeColors.buttonDisabledTextColor
                  : DarkThemeColors.buttonDisabledTextColor);
        }
        return MyFonts.buttonTextStyle.copyWith(
            fontSize: fontSize ?? MyFonts.buttonTextSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: isLightTheme
                ? LightThemeColors.buttonTextColor
                : DarkThemeColors
                    .buttonTextColor); // Use the component's default.
      },
    );
  }

  //elevated button theme data
  static ElevatedButtonThemeData getElevatedButtonTheme(
          {required bool isLightTheme}) =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
              //side: BorderSide(color: Colors.teal, width: 2.0),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 8.h)),
          textStyle: getElevatedButtonTextStyle(isLightTheme),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return isLightTheme
                    ? LightThemeColors.buttonColor
                    : DarkThemeColors.buttonColor;
              } else if (states.contains(MaterialState.disabled)) {
                return isLightTheme
                    ? LightThemeColors.buttonDisabledColor
                    : DarkThemeColors.buttonDisabledColor;
              }
              return isLightTheme
                  ? LightThemeColors.buttonColor
                  : DarkThemeColors.buttonColor; // Use the component's default.
            },
          ),
        ),
      );

  //elevated button theme data
  static TextButtonThemeData getTextButtonTheme({required bool isLightTheme}) =>
      TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
              //side: BorderSide(color: Colors.teal, width: 2.0),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 8.h)),
          textStyle: getElevatedButtonTextStyle(isLightTheme),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return isLightTheme
                    ? LightThemeColors.primaryColor
                    : DarkThemeColors.primaryColor;
              } else if (states.contains(MaterialState.disabled)) {
                return isLightTheme
                    ? LightThemeColors.buttonDisabledColor
                    : DarkThemeColors.buttonDisabledColor;
              }
              return isLightTheme
                  ? LightThemeColors.primaryColor
                  : DarkThemeColors
                      .primaryColor; // Use the component's default.
            },
          ),
        ),
      );
}
