// Here’s a step-by-step guide to how Riverpod state management works:
// import flutter_riverpod package in your project and not riverpod package
// flutter_riverpod package contains flutter widgets and riverpod package is the core package with the dart logic

// import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. Setup ProviderScope

//     Step: Wrap your app with a ProviderScope in the main.dart file.
//     Why: This establishes the scope for all providers to manage states globally.
//     Example:

//     void main() {
//       runApp(ProviderScope(child: MyApp()));
//     }

// 2. Define a Provider

//     Step: Create a provider to manage your state.
//     Types:
//         Provider: For immutable data.
//         StateProvider: For mutable state.
//         StateNotifierProvider: For complex state logic.
//     Example:

//     final counterProvider = StateProvider<int>((ref) => 0);

// 3. Use Providers in Widgets

//     Step: Use ref.watch to read and listen to provider changes in your UI.
//     Why: To rebuild widgets dynamically when state changes.
//     Example:

//     class MyWidget extends ConsumerWidget {
//       @override
//       Widget build(BuildContext context, WidgetRef ref) {
//         final count = ref.watch(counterProvider);
//         return Text('Count: $count');
//       }
//     }

// 4. Modify State

//     Step: Use ref.read or notifier methods to update the state.
//     Why: To trigger updates without rebuilding the widget unnecessarily.
//     Example:

//     ElevatedButton(
//       onPressed: () => ref.read(counterProvider.notifier).state++,
//       child: Text('Increment'),
//     );

// 5. Work with Advanced Logic (Optional)

//     Step: Use StateNotifier for managing complex state transitions.
//     Why: It separates business logic from the UI.
//     Example:

//     class CounterNotifier extends StateNotifier<int> {
//       CounterNotifier() : super(0);

//       void increment() => state++;
//     }

//     final counterNotifierProvider = StateNotifierProvider<CounterNotifier, int>(
//       (ref) => CounterNotifier(),
//     );

// 6. Listen to Changes

//     Step: Use ref.listen for background tasks or side effects.
//     Why: To react to state changes without rebuilding the widget.
//     Example:

//     ref.listen<int>(counterProvider, (_, next) {
//       print('New count: $next');
//     });

// 7. Organize State Logic

//     Step: Group related providers and logic for scalability.
//     Why: To maintain clean and modular code.

// Key Concepts:

//     ref.watch: Rebuilds the UI on provider updates.
//     ref.read: Reads data once, does not rebuild.
//     Notifier: Manages complex state transitions.
//     Scoped Providers: Limits state to specific parts of the app.

// By following these steps, you can effectively use Riverpod to manage your app's state, making your code modular, testable, and scalable.
