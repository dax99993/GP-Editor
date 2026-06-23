import 'package:flutter/foundation.dart';
import 'package:gp_editor/data/test_patch.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/parameters/parameter.dart';
import 'package:gp_editor/models/patch/exp.dart';
import 'package:gp_editor/models/patch/fxloop.dart';
import 'package:gp_editor/models/patch/knob.dart';
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

  // Utils
  Effect get selectedEffect {
    final selectedEffectType = ref.read(appProvider).selectedEffect;
    return state.effects.firstWhere((e) => e.type == selectedEffectType);
  }

  // Effect Chain
  void reorderEffectChain(List<EffectType> order) {
    print('Changing effects chain order $order');
    // TODO: safe check no repetition of Effecttype and length of list
    state = state.copyWith(effectsChainOrder: order);
  }

  // Effect
  void setEffect(Effect effect) {
    final effects = [...state.effects];
    final index = effects.indexWhere((e) => e.type == effect.type);
    effects[index] = effect;
    state = state.copyWith(effects: effects);
  }

  void setEffectState(EffectType effectType, bool stateValue) {
    final effects = [...state.effects];
    final index = effects.indexWhere((e) => e.type == effectType);
    final effect = effects[index];
    effects[index] = effect.copyWith(state: stateValue);
    state = state.copyWith(effects: effects);
  }

  // void setEffectParameter({
  //   required EffectType effectType,
  //   required int parameterId,
  //   required double value,
  // }) {
  //   final effects = [...state.effects];
  //   final effectIndex = effects.indexWhere((e) => e.type == effectType);
  //   final effect = effects[effectIndex];

  //   final parameters = [...effect.parameters];
  //   final paramIndex = parameters.indexWhere((p) => p.id == parameterId);
  //   final param = parameters[paramIndex];

  //   parameters[paramIndex] = param.copyWith(value: value);
  //   effects[effectIndex] = effect.copyWith(parameters: parameters);

  //   state = state.copyWith(effects: effects);
  // }

  // General Settings
  void setVolume(int volume) {
    state = state.copyWith(settings: state.settings.copyWith(volume: volume));
  }

  void setPan(int pan) {
    state = state.copyWith(settings: state.settings.copyWith(pan: pan));
  }

  void setBpm(int bpm) {
    state = state.copyWith(settings: state.settings.copyWith(bpm: bpm));
  }

  // FxLoop
  // TODO: verify this state spliting is adecuate for midi state change messages
  void setFxLoopPosition(int sendPosition, int returnPosition) {
    final fxloop = state.fxLoop.copyWith(
      sendPosition: sendPosition,
      returnPosition: returnPosition,
    );
    state = state.copyWith(fxLoop: fxloop);
  }

  void setFxLoopSendLevel(double level) {
    final fxloop = state.fxLoop.copyWith(sendLevel: level);
    state = state.copyWith(fxLoop: fxloop);
  }

  void setFxLoopReturnLevel(double level) {
    final fxloop = state.fxLoop.copyWith(returnLevel: level);
    state = state.copyWith(fxLoop: fxloop);
  }

  void setFxLoopMode(FXLoopMode mode) {
    final fxloop = state.fxLoop.copyWith(mode: mode);
    state = state.copyWith(fxLoop: fxloop);
  }

  // Knob
  void setKnob({
    required int knobId,
    required KnobModule knobModule,
    required int moduleParamId,
  }) {
    final knobs = [...state.knobs];

    knobs[knobId] = knobs[knobId].copyWith(
      module: knobModule,
      moduleParamId: moduleParamId,
    );

    // print('New Module: ${knobs[knobId].module}');

    state = state.copyWith(knobs: knobs);
  }

  void setKnobModule({required int knobId, required KnobModule knobModule}) {
    // Get Id of first parameter
    setKnob(knobId: knobId, knobModule: knobModule, moduleParamId: 0);
  }

  // CTRL
  void toggleCtrlEffect(int ctrlId, EffectType effect) {
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

  // EXP
  void setExp({
    required ExpId expId,
    required ExpParamId paramId,
    required ExpModule module,
    int? moduleParamId,
    double? min,
    double? max,
  }) {
    // Get effect specified by exp module if any (off has no effect)
    print('$expId - $paramId $module');
    Effect? effect;
    try {
      effect = state.effects.firstWhere((e) => e.type.code == module.code);
    } on StateError {
      effect = null;
    }

    // create copy of EXPs and index of EXP we're gonna modify
    final exps = [...state.exps];
    final index = exps.indexWhere((e) => e.id == expId && e.paramId == paramId);

    print('Effect is null? ${effect == null}');
    print('Exp Index is $index');

    // change state according to effect (exp module off -> no effect -> null)
    if (effect == null) {
      exps[index] = exps[index].copyWith(
        module: module,
        paramId: paramId,
        moduleParamId: 0,
        moduleParamMinValue: 0,
        moduleParamMaxValue: 0,
      );
    } else {
      Parameter param;

      // Get first parameter or specified parameter by id
      if (moduleParamId != null) {
        param = effect.parameters.firstWhere((p) => p.id == moduleParamId);
      } else {
        param = effect.parameters.first;
      }
      print('Param ${param.id}');

      exps[index] = exps[index].copyWith(
        module: module,
        paramId: paramId,
        moduleParamId: param.id,
        moduleParamMinValue: min == null
            ? param.min
            : clampDouble(min, param.min, param.max),
        moduleParamMaxValue: max == null
            ? param.max
            : clampDouble(max, param.min, param.max),
      );
    }
    print('New EXP ${exps[index]}');

    state = state.copyWith(exps: exps);
  }
}
