import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/data/test_patch.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/patch/patch.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patch_provider.g.dart';

@riverpod
class PatchNotifier extends _$PatchNotifier {
  @override
  Patch build() {
    final _ = ref.watch(appProvider.select((a) => a.selectedEffect));
    // return App(selectedEffect: EffectType.pre);
    return testPatch.copyWith(name: "My Patch");
  }

  Effect get selectedEffect {
    final selectedEffectType = ref.read(appProvider).selectedEffect;
    return state.effects.firstWhere((e) => e.type == selectedEffectType);
  }

  // void setPatch(Patch patch) {
  //   state = state.copyWith();
  // }
}

@riverpod
class EffectNotifier extends _$EffectNotifier {
  @override
  Patch build() {
    final _ = ref.watch(appProvider.select((a) => a.selectedEffect));
    // return App(selectedEffect: EffectType.pre);
    return testPatch.copyWith(name: "My Patch");
  }
}
