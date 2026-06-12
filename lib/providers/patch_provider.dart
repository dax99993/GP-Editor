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
  build() {
    final _ = ref.watch(appProvider.select((a) => a.selectedEffect));
    // return App(selectedEffect: EffectType.pre);
    return testPatch.copyWith(name: "AXX");
  }

  Effect get selectedEffect {
    // final selectedEffectType = ref.watch(appProvider.notifier.select((a) => a.));
    final selectedEffectType = ref.watch(appProvider).selectedEffect;
    return state.effects.firstWhere((e) => e.type == selectedEffectType);
  }

  // void setPatch(Patch patch) {
  //   state = state.copyWith();
  // }
}
