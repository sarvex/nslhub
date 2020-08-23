import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NslHub {
  NslHub._();

  static const height = 1920.0;
  static const width = 1080.0;

  static const desktop = 12;
  static const mobile = 6;
  static const ratioContent = 0.8;
  static const ratioMargin = 0.2;

  static const duration = 700;

  static final font = GoogleFonts.montserratTextTheme().copyWith(
    headline1: const TextStyle(fontSize: 36),
    headline2: const TextStyle(fontSize: 32),
    headline3: const TextStyle(fontSize: 28),
    headline4: const TextStyle(fontSize: 24),
    headline5: const TextStyle(fontSize: 20),
    headline6: const TextStyle(fontSize: 16),
  );

  static const blues = {
    50: Color(0xffe8ebf0),
    100: Color(0xffc3cedb),
    200: Color(0xff9eaec2),
    300: Color(0xff7a8fa9),
    400: Color(0xff5c7698),
    500: Color(0xff3e5f8a),
    600: Color(0xff375881),
    700: Color(0xff2e4e75),
    800: Color(0xff294468),
    900: Color(0xff22334f),
  };

  static const reds = {
    50: Color(0xfffeebef),
    100: Color(0xfffcced4),
    200: Color(0xffec9c9d),
    300: Color(0xffe17678),
    400: Color(0xffeb5757),
    500: Color(0xfff0483f),
    600: Color(0xffe13f3d),
    700: Color(0xffcf3637),
    800: Color(0xffc22f30),
    900: Color(0xffb32425),
  };

  static final primary = Colors.red;
  static final primaryAccent = Colors.redAccent;
  static final primaryDark = Colors.blueGrey;

  static final nearlyDarkRed = reds[800];
  static final nearlyDarkBlue = blues[800];

  static final nearlyRed = reds[600];
  static final nearlyBlue = blues[600];

  static final nearlyLightRed = reds[100];
  static final nearlyLightBlue = blues[100];

  static const nearlyBlack = Color(0xFF213333);
  static const grey = Color(0xFF3A5160);
  static const darkGrey = Color(0xFF313A44);
  static const nearlyWhite = Color(0xFFFAFAFA);
  static const background = Color(0xFFf7f3f2);
  static const gradientColor2 = Color(0xff6A88E5);

  static const darkText = Color(0xFF253840);
  static const darkerText = Color(0xFF17262A);
  static const lightText = Color(0xFF4A6572);
  static const deactivatedText = Color(0xFF767676);
  static const dismissibleBackground = Color(0xFF364A54);
  static const spacer = Color(0xFFF2F2F2);

  static const lifeBlue = Color(0xffd9fffe);
  static const lifeOrange = Color(0xffff585d);
  static const lifeGrey = Color(0xff7a8595);
  static const lifeWhite = Color(0xfffafafa);
  static const lifeLightGrey = Color(0xffecf0f4);
  static const lifeLightYellow = Color(0xfffffeea);
  static const lifeLightBlue = Color(0xffe7fbff);
  static const lifeLightPink = Color(0xffffe8ff);
  static const lifeBlack = Color(0xff000000);
  static const lifeBlackLight = Color(0xff22334f);
  static const lifeGreenCheck = Color(0xff32bea6);
  static const lifeRedCross = Color(0xffea5857);

  static const smallCard = BorderRadius.only(
    bottomRight: Radius.circular(32.0),
    bottomLeft: Radius.circular(8.0),
    topLeft: Radius.circular(32.0),
    topRight: Radius.circular(8.0),
  );

  static const largeCard = BorderRadius.only(
    bottomRight: Radius.circular(64.0),
    bottomLeft: Radius.circular(16.0),
    topLeft: Radius.circular(64.0),
    topRight: Radius.circular(16.0),
  );

  static ThemeData light = ThemeData(
    primarySwatch: MaterialColor(reds[400].value, reds),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(16.0),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
      shadowColor: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: smallCard),
    ),
    chipTheme: ChipThemeData.fromDefaults(
      primaryColor: blues[500],
      secondaryColor: reds[500],
      labelStyle: font.headline6,
    ).copyWith(
      shape: const RoundedRectangleBorder(borderRadius: smallCard),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
    ),
    buttonTheme: ButtonThemeData(shape: const RoundedRectangleBorder(borderRadius: smallCard), buttonColor: reds[400]),
    appBarTheme: AppBarTheme(color: reds[50], actionsIconTheme: IconThemeData(color: reds[600])),
    iconTheme: IconThemeData(color: reds[400]),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: reds[500],
      focusColor: reds[600],
      splashColor: reds[600].withOpacity(0.25),
      shape: const RoundedRectangleBorder(borderRadius: smallCard),
    ),
    fontFamily: 'Montserrat',
    textTheme: font,
    brightness: Brightness.light,
    primaryColorBrightness: Brightness.light,
    accentColorBrightness: Brightness.light,
  );

  static ThemeData dark = light.copyWith(
    brightness: Brightness.dark,
    primaryColorBrightness: Brightness.dark,
    accentColorBrightness: Brightness.dark,
  );
}
