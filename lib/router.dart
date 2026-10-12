import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'alerts_screen.dart';
import 'forecast_screen.dart';
import 'island_screen.dart';
import 'settings_screen.dart';

/// Every screen of the app, with its path, like the pages of a site.
final router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => Scaffold(
        body: shell, // the current tab, with its own stack
        bottomNavigationBar: NavigationBar(
          selectedIndex: shell.currentIndex,
          onDestinationSelected: (i) =>
              shell.goBranch(i, initialLocation: i == shell.currentIndex),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.wb_sunny_outlined),
              label: 'Previsão',
            ),
            NavigationDestination(
              icon: Icon(Icons.warning_amber),
              label: 'Avisos',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              label: 'Definições',
            ),
          ],
        ),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const ForecastScreen(),
              routes: [
                GoRoute(
                  path: 'island/:id', // /island/pico
                  builder: (context, state) =>
                      IslandScreen(id: state.pathParameters['id']!),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/alerts',
              builder: (context, state) => const AlertsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
