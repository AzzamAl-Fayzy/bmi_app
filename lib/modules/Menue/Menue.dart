import 'package:flutter/material.dart';

class Menue extends StatelessWidget {
  const Menue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: const Center(
        child: Text('Welcome to Menu'),
      ),
    );
  }
}

