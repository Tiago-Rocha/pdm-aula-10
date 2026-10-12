import 'package:flutter/material.dart';

/// The Trilhos tab.
class TrailsScreen extends StatelessWidget {
  const TrailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trilhos')),
      body: const Center(child: Text('Ainda sem trilhos')),
    );
  }
}
