import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utmb/shared/styles/colors.dart';


ThemeData darkTheme = ThemeData(


  primarySwatch: defultColor,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 20,
      selectedItemColor: defultColor,
      unselectedItemColor: Colors.grey,
  ),
);
ThemeData lightTheme = ThemeData(

  primarySwatch: defultColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    titleSpacing: 20.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    backgroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 20,
      selectedItemColor: defultColor,
      unselectedItemColor: Colors.grey,
  ),
);
