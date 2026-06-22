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
  knobs: [
    Knob(id: 0, module: KnobModule.amp, moduleParamId: 1),
    Knob(id: 1, module: KnobModule.cab, moduleParamId: 1),
    Knob(id: 2, module: KnobModule.off, moduleParamId: 0),
  ],
  ctrls: [
    Ctrl(id: 0, effects: [EffectType.pre]),
    Ctrl(id: 1, effects: [EffectType.wah]),
    Ctrl(id: 2, effects: [EffectType.amp, EffectType.cab]),
    Ctrl(id: 3, effects: [EffectType.dst]),
    Ctrl(id: 4, effects: []),
    Ctrl(id: 5, effects: []),
    Ctrl(id: 6, effects: []),
    Ctrl(id: 7, effects: [EffectType.dly]),
  ],
  effectsChainOrder: [
    EffectType.nr,
    EffectType.pre,
    EffectType.wah,
    EffectType.dst,
    EffectType.amp,
    EffectType.cab,
    EffectType.eq,
    EffectType.mod,
    EffectType.dly,
    EffectType.rvb,
    EffectType.vol,
  ],
  effects: [
    defaultEffects[EffectType.pre]!.elementAt(0),
    defaultEffects[EffectType.wah]!.elementAt(1),
    defaultEffects[EffectType.dst]!.elementAt(2),
    defaultEffects[EffectType.amp]!.elementAt(3).copyWith(state: true),
    defaultEffects[EffectType.nr]!.elementAt(0),
    defaultEffects[EffectType.cab]!.elementAt(0),
    defaultEffects[EffectType.eq]!.elementAt(0),
    defaultEffects[EffectType.mod]!.elementAt(0),
    defaultEffects[EffectType.dly]!.elementAt(0),
    defaultEffects[EffectType.rvb]!.elementAt(0),
    defaultEffects[EffectType.vol]!.elementAt(0),
  ],
);
