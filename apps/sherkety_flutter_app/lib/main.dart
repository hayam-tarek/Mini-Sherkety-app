import 'package:flutter/material.dart';

void main() {
  runApp(const SherketyApp());
}

class SherketyApp extends StatelessWidget {
  const SherketyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sherkety app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sherkety app'),
        ),
        body: const Center(
          child: Text('Welcome to Sherkety app❤'),
        ),
      ),
    );
  }
}
