import 'package:gp_editor/models/app/app.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_provider.g.dart';

@riverpod
class AppNotifier extends _$AppNotifier {
  @override
  build() {
    return App(selectedEffect: EffectType.pre);
  }

  void setSelectedEffect(EffectType effectType) {
    state = state.copyWith(selectedEffect: effectType);
  }
}
