import 'package:flutter/material.dart';

import 'data.dart';
import 'forecast_screen.dart';

/// One island: photo and the five days.
///
/// It receives the id, not the Island: a route like /island/pico is only text.
class IslandScreen extends StatelessWidget {
  const IslandScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final island = islands.where((i) => i.id == id).firstOrNull;
    if (island == null) {
      // an id that does not exist, for example a mistyped link
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text('Ilha não encontrada')),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(island.name)),
      body: ListView(
        children: [
          Image.asset(island.image, height: 240, fit: BoxFit.cover),
          const SizedBox(height: 16),
          const DaysRow(),
        ],
      ),
    );
  }
}
