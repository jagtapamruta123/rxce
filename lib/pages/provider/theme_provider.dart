import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    // primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
    
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey,
    ),
    colorScheme: ColorScheme.dark(),
    // iconTheme: IconThemeData(
    //   color: Colors.pink,
    //   opacity: 0.8,
    // ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.green,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(
      color: Colors.blue,
      opacity: 0.8,
    ),
  );
}
