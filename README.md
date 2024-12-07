This cheatsheet provides a clear structure for working with Riverpod in Flutter:
Setup

    Use ProviderScope to wrap the app for Riverpod state management.

Easy Level

    Use StateProvider for simple state management.
    Use ConsumerWidget to listen to providers.
    ref.watch(provider) listens to changes in the provider.
    ref.read(provider.notifier).state allows direct editing of the state.

Advanced (Model-Based)

    Use ChangeNotifierProvider with a ChangeNotifier class.
    Call notifyListeners() when changing data.
    Use ref.watch and ref.read for listening or updating values.

Key Concept:

    watch = listen for updates.
    read = get or update values without listening for changes.