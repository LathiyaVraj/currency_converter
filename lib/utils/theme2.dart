import 'package:flutter/material.dart';

darkTheme() {
  return ThemeData(
    useMaterial3: true,
    backgroundColor: Colors.black,
    brightness: Brightness.dark,
    primaryColor: const Color(0xFFADC6FF),
  );
}

lightTheme() {
  return ThemeData(
    backgroundColor: Colors.white,
    useMaterial3: true,
    brightness: Brightness.light,
  );
}
