import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const VaultaApp());
}

class VaultaApp extends StatelessWidget {
  const VaultaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vaulta',
      theme: AppTheme.lightTheme,
      home: const WelcomeScreen(),
    );
  }
}