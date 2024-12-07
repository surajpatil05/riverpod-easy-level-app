import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_easy_level/riverpod_data.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Riverpod StateManagement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                ref
                    .read(riverpodIsLightHard.notifier)
                    .changeTheme(newBool: true);
              },
              label: const Text('Light Mode'),
              icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIsLightHard).changeTheme(newBool: false);
              },
              label: const Text('Dark Mode'),
              icon: const Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
    );
  }
}
