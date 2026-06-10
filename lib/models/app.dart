// IDK if i should keep app global state in a class or its handle in a provider?
import 'package:gp_editor/models/effect/effect.dart';

class AppState {
  // Connection state (init, syncing, connected, disconnected)

  // Device state (device variant)

  // Edit state
  final EffectType currentSelectedEffect;

  AppState({
    required this.currentSelectedEffect,
  }); // currently selected effect in effect chain
}
