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

  //
  void reorderEffectChain(List<EffectType> order) {
    print('Changing effects chain order $order');
    // TODO: safe check no repetition of Effecttype and length of list
    state = state.copyWith(effectsChainOrder: order);
  }

  // FxLoop

  // Knob

  // EXP

  // CTRL
  void toggleCtrlEffect(int ctrlId, EffectType effect) {
    // final ctrls = state.ctrls;
    // final ctrl = ctrls[ctrlId];
    // final effects = ctrl.effects;

    // List<EffectType> newEffects = [];
    // if (effects.contains(effect)) {
    //   newEffects = [...effects.where((e) => e != effect)];
    // } else {
    //   newEffects = [...effects, effect];
    // }

    // final newCtrl = ctrl.copyWith(effects: newEffects);
    // final newCtrls = [...ctrls];
    // newCtrls[ctrlId] = newCtrl;

    // print('Changed Effects $newEffects');
    // state = state.copyWith(ctrls: newCtrls);

    final ctrls = [...state.ctrls];
    final effects = [...ctrls[ctrlId].effects];
    if (effects.contains(effect)) {
      effects.remove(effect);
    } else {
      effects.add(effect);
    }

    ctrls[ctrlId] = ctrls[ctrlId].copyWith(effects: effects);

    state = state.copyWith(ctrls: ctrls);
  }
}
