import 'package:flutter/material.dart';

class Mytheme {
  static const Color primaryColor = Color(0xffeef4fd);
  static const Color elevetedButtonColor = Color(0xff2466ce);
  static const Color blackColor = Color(0xff000101);
  static const Color GraykColor = Color(0xffd8d9d8);
  static const Color deepGrayColor = Color(0xff8b8b8b);

  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: primaryColor,
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: blackColor, fontSize: 27, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
              color: blackColor, fontSize: 20, fontWeight: FontWeight.bold)));
}
