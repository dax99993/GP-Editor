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
    return testPatch.copyWith(name: "My Patch");
  }

  Effect get selectedEffect {
    final selectedEffectType = ref.read(appProvider).selectedEffect;
    return state.effects.firstWhere((e) => e.type == selectedEffectType);
  }

  void reorderEffectChain(List<EffectType> order) {
    print('Changing effects chain order $order');
    // TODO: safe check no repetition of Effecttype and length of list
    state = state.copyWith(effectsChainOrder: order);
  }
}
