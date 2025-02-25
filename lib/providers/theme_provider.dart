import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_easy_level/models/theme_notifier.dart';

// by default application starts in light mode so set it as true
final riverpodIsLightEasy = StateProvider<bool>(
  (ref) => true,
);

final riverpodIsLightHard = ChangeNotifierProvider<ThemeNotifier>(
  (ref) {
    return ThemeNotifier(isLight: true);
  },
);
