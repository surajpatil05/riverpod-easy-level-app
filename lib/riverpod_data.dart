import 'package:flutter_riverpod/flutter_riverpod.dart';

// by default application starts in light mode so set it as true
final riverpodIsLight = StateProvider<bool>(
  (ref) => true,
);
