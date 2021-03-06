import 'package:get_it/get_it.dart';
import 'package:skatify/services/game_service.dart';

final getIt = GetIt.instance;

// Initialize services within the app.
void setupLocator() {
  getIt.registerSingleton<GameService>(GameService());
}
