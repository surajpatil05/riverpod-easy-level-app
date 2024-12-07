import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_easy_level/riverpod_model.dart';

// by default application starts in light mode so set it as true
final riverpodIsLightEasy = StateProvider<bool>(
  (ref) => true,
);

final riverpodIsLightHard = ChangeNotifierProvider<RiverpodModel>(
  (ref) {
    return RiverpodModel(isLight: true);
  },
);
