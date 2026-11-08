import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resepku/providers/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan')),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: const Text('Mode gelap'),
            subtitle: const Text('Ubah tampilan seluruh aplikasi'),
            value: theme.isDark,
            onChanged: (value) => context.read<ThemeProvider>().setDarkMode(value),
          ),
        ],
      ),
    );
  }
}