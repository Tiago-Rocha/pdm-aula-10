import 'package:flutter/material.dart';

/// One trail. It receives the id from the route, like IslandScreen.
class TrailScreen extends StatelessWidget {
  const TrailScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(id)),
      body: const Center(child: Text('Trilho por fazer')),
    );
  }
}
