import 'package:gp_editor/data/default_effects.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/patch/ctrl.dart';
import 'package:gp_editor/models/patch/exp.dart';
import 'package:gp_editor/models/patch/fxloop.dart';
import 'package:gp_editor/models/patch/knob.dart';
import 'package:gp_editor/models/patch/patch.dart';

Patch testPatch = Patch(
  name: "It's GP-200",
  index: 2,
  author: 'Some dude',
  note: '',
  settings: PatchSettings(volume: 80, pan: 0, bpm: 120),
  fxLoop: FXLoop(
    sendLevel: 50,
    returnLevel: 50,
    sendPosition: 2,
    returnPosition: 3,
    mode: FXLoopMode.parallel,
  ),
  exp1a: Exp(
    id: 0,
    module1: ExpSetting(
      settingId: 0,
      module: ExpModule.pre,
      effectParamId: 1,
      moduleParamMinValue: 0,
      moduleParamMaxValue: 100,
    ),
    module2: ExpSetting(
      settingId: 1,
      module: ExpModule.wah,
      effectParamId: 0,
      moduleParamMinValue: 0,
      moduleParamMaxValue: 50,
    ),
    module3: ExpSetting(
      settingId: 2,
      module: ExpModule.dst,
      effectParamId: 2,
      moduleParamMinValue: 25,
      moduleParamMaxValue: 75,
    ),
  ),
  exp1b: Exp(
    id: 1,
    module1: ExpSetting(
      settingId: 0,
      module: ExpModule.pre,
      effectParamId: 1,
      moduleParamMinValue: 0,
      moduleParamMaxValue: 100,
    ),
    module2: ExpSetting(
      settingId: 1,
      module: ExpModule.wah,
      effectParamId: 0,
      moduleParamMinValue: 0,
      moduleParamMaxValue: 50,
    ),
    module3: ExpSetting(
      settingId: 2,
      module: ExpModule.dst,
      effectParamId: 2,
      moduleParamMinValue: 25,
      moduleParamMaxValue: 75,
    ),
  ),
  exp2: Exp(
    id: 2,
    module1: ExpSetting(
      settingId: 0,
      module: ExpModule.pre,
      effectParamId: 1,
      moduleParamMinValue: 0,
      moduleParamMaxValue: 100,
    ),
    module2: ExpSetting(
      settingId: 1,
      module: ExpModule.wah,
      effectParamId: 0,
      moduleParamMinValue: 0,
      moduleParamMaxValue: 50,
    ),
    module3: ExpSetting(
      settingId: 2,
      module: ExpModule.dst,
      effectParamId: 2,
      moduleParamMinValue: 25,
      moduleParamMaxValue: 75,
    ),
  ),
  knob1: Knob(id: 0, module: KnobModule.amp, effectParamId: 0),
  knob2: Knob(id: 1, module: KnobModule.cab, effectParamId: 0),
  knob3: Knob(id: 2, module: KnobModule.dst, effectParamId: 0),
  ctrl1: Ctrl(id: 0, effects: [EffectType.pre]),
  ctrl2: Ctrl(id: 1, effects: [EffectType.wah]),
  ctrl3: Ctrl(id: 2, effects: [EffectType.amp, EffectType.cab]),
  ctrl4: Ctrl(id: 3, effects: [EffectType.dst]),
  ctrl5: Ctrl(id: 4, effects: []),
  ctrl6: Ctrl(id: 5, effects: []),
  ctrl7: Ctrl(id: 6, effects: []),
  ctrl8: Ctrl(id: 7, effects: [EffectType.dly]),
  effectsChainOrder: [0, 1, 2, 4, 5, 3, 6, 7, 8, 9, 10],
  effects: [
    defaultEffects[EffectType.pre]!.elementAt(0),
    defaultEffects[EffectType.wah]!.elementAt(0),
    defaultEffects[EffectType.dst]!.elementAt(0),
    defaultEffects[EffectType.amp]!.elementAt(0),
    defaultEffects[EffectType.nr]!.elementAt(0),
    defaultEffects[EffectType.cab]!.elementAt(0),
    defaultEffects[EffectType.eq]!.elementAt(0),
    defaultEffects[EffectType.mod]!.elementAt(0),
    defaultEffects[EffectType.dly]!.elementAt(0),
    defaultEffects[EffectType.rvb]!.elementAt(0),
    defaultEffects[EffectType.vol]!.elementAt(0),
  ],
);
