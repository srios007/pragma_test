import 'package:flutter/material.dart';

/// Esta clase contiene todos los colores que se usarán dentro de la aplicación
class Palette {
  factory Palette() {
    return _instance;
  }

  Palette._internal();

  static final _instance = Palette._internal();

  static const mainColor = Color(0xFFD8CCAE);
  static const secondaryColor = Color(0xFFE8E3CE);
  static const platinum = Color(0xFFECEDEB);
  static const white = Color(0xFFF2F2F0);
  static const black = Color(0xFF0B0C0E);
}
