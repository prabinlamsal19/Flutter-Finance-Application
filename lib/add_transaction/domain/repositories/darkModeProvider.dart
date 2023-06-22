import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DarkModeNotifier extends StateNotifier<bool> {
  DarkModeNotifier() : super(false);

  Future<void> initialize() async {
    const storage =  FlutterSecureStorage();
    final storedData = await storage.read(key: 'darkMode');
    state = storedData == 'true';
  }

  void toggle() async {
    state = !state;
    const storage = FlutterSecureStorage();
    await storage.write(key: 'darkMode', value: state.toString());
  }
}

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>((ref) {
  final notifier = DarkModeNotifier();
  notifier.initialize();
  return notifier;
});
