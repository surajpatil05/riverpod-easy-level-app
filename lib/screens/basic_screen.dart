import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_easy_level/riverpod_data.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

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
                ref.read(riverpodIsLightEasy.notifier).state = true;
              },
              label: const Text('Light Mode'),
              icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIsLightEasy.notifier).state = false;
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
