import 'package:alubank/screens/home_screen.dart';
import 'package:alubank/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlubankApp());
}

class AlubankApp extends StatelessWidget {
  const AlubankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      home: const HomeScreen(),
    );
  }
}