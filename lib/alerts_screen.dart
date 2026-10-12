import 'package:flutter/material.dart';

import 'alerts_form.dart';

/// Alerts tab: the sign-up form from class 8, now on a screen of its own.
class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avisos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [AlertsForm()],
      ),
    );
  }
}
