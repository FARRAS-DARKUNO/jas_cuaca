import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

const Color kPrimary = Color.fromARGB(255, 12, 124, 244);
const Color kSecondary = Color.fromARGB(255, 0, 218, 248);
const Color kTersier = Color.fromARGB(255, 230, 238, 246);
const Color kBlack = Color.fromARGB(255, 0, 0, 0);
const Color kWhite = Color.fromARGB(255, 255, 255, 255);

final TextStyle h1 =
    GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.bold);
final TextStyle h2 =
    GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.bold);
final TextStyle h3 =
    GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600);
final TextStyle h4 =
    GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w500);
final TextStyle unit =
    GoogleFonts.openSans(fontSize: 32, fontWeight: FontWeight.normal);
final TextStyle draw =
    GoogleFonts.openSans(fontSize: 36, fontWeight: FontWeight.bold);
final TextStyle page =
    GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.normal);
final TextStyle button =
    GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.bold);

final kTextTheme = TextTheme(
    headline1: h1,
    headline2: h2,
    headline3: h3,
    headline4: h4,
    bodyLarge: draw,
    caption: page,
    button: button,
    bodyText1: unit);

const kColorScheme = ColorScheme(
  primary: kPrimary,
  primaryContainer: kPrimary,
  secondary: kSecondary,
  secondaryContainer: kSecondary,
  surface: kTersier,
  background: kWhite,
  error: Colors.red,
  onPrimary: kBlack,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.white,
  brightness: Brightness.light,
);
