import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'widgets/app_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kartu Profil Saya',
      theme: AppTheme.lightTheme,
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            child: Padding(
              padding: const EdgeInsets.all(21),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    child: Icon(Icons.person, size: 30),
                  ),
                  const SizedBox(height: 16),
                  const Text('Nadhif Shoeema Goldist'),
                  const SizedBox(height: 13),
                  const Text('20240801085'),
                  const SizedBox(height: 12),
                  const Text('Teknik Informatika'),
                  const SizedBox(height: 16),
                  const Text(
                    'Mahasiswa Teknik Informatika yang tertarik dengan pengembangan aplikasi mobile.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const AppButton(
                    label: 'Kunjungi GitHub Saya',
                    icon: Icons.code,
                    url: 'https://github.com/nadhifshoeemagoldist-wq',
                    height: 45,
                    borderRadius: 9,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
