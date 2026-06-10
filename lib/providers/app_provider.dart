import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/app/app.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final appProvider = NotifierProvider<AppStateNotifier, App>(
  AppStateNotifier.new,
);

class AppStateNotifier extends Notifier<App> {
  @override
  build() {
    return App(selectedEffect: EffectType.pre);
  }

  void setSelectedEffect(EffectType effectType) {
    state = state.copyWith(selectedEffect: effectType);
  }
}

// part 'app_provider.g.dart';

// @riverpod
// class AppNotifier extends _$AppNotifier {
//   @override
//   build() {
//     return App(selectedEffect: EffectType.pre);
//   }

//   void setSelectedEffect(EffectType effectType) {
//     state = state.copyWith(selectedEffect: effectType);
//   }
// }
