import 'package:flutter/material.dart';

// Class untuk menyimpan konfigurasi tema aplikasi
class AppTheme {
  // Getter untuk tema terang
  static ThemeData get lightTheme {
    return ThemeData(
      // Atur warna utama dari skema warna
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      ),
      // Warna latar belakang halaman
      scaffoldBackgroundColor: const Color(0xFFF0F4F8),
      useMaterial3: true,
    );
  }
}
