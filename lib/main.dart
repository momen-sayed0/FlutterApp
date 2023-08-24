import 'package:flutter/material.dart';
import 'LayoutScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'momenSayed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 92, 0, 252)),
        useMaterial3: true,
      ),
      home: const LayoutScreen(),
    );
  }
}
