import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xFFC85121), // A deep, warm terracotta orange
    onPrimary: Colors.white,
    secondary: const Color(0xFFF0E6D8), // A creamy off-white, like a latte
    onSecondary: const Color(0xFF4A4E54), // A dark, subtle grey-brown
    error: const Color(0xFFB00020), // A standard error red
    onError: Colors.white,
    surface: const Color(0xFFF9F7F4), // A light, warm off-white for backgrounds
    onSurface: const Color(0xFF4A4E54), // A dark, subtle grey-brown
  ),
);
