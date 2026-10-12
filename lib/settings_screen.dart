import 'package:flutter/material.dart';

/// Settings tab. For now it only shows the app version.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Definições')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Tempo Açores'),
            subtitle: Text('Versão 1.0.0'),
          ),
        ],
      ),
    );
  }
}
