import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_easy_level/screens/advanced_screen.dart';
import 'package:riverpod_easy_level/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //can also use Brightness brightness = ref.watch(riverpodIsLightEasy) ? Brightness.light : Brightness.dark;
    Brightness brightness = ref.watch(riverpodIsLightHard).isLight
        ? Brightness.light
        : Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: brightness,
        ),
        useMaterial3: true,
      ),
      home:
          const AdvanceScreen(), //replace it with EasyPage(), to see that page ui
    );
  }
}
