// IDK if i should keep app global state in a class or its handle in a provider?
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gp_editor/features/effects/data/models/effect.dart';

part 'app.freezed.dart';
// part 'app.g.dart';

@freezed
abstract class App with _$App {
  // Connection state (init, syncing, connected, disconnected)

  // Device state (device variant)

  // Edit state
  // selectedEffect
  //
  const factory App({required EffectType selectedEffect}) = _App;
}
