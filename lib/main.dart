import 'package:chandrayaan_3_tdd_assessment/space_craft_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chandrayaan 3 Lunar Craft: Galactic Space Craft Control',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const SpaceCraftPage(
          title: 'Chandrayaan 3 Lunar Craft: Galactic Space Craft Control'),
    );
  }
}
