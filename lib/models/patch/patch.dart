import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/patch/ctrl.dart';
import 'package:gp_editor/models/patch/exp.dart';
import 'package:gp_editor/models/patch/fxloop.dart';
import 'package:gp_editor/models/patch/knob.dart';

part 'patch.freezed.dart';

// enum PatchCategory {
//   metal, pop
// }

@freezed
abstract class PatchSettings with _$PatchSettings {
  const factory PatchSettings({
    required int volume,
    required int pan,
    required int bpm,
  }) = _PatchSettings;
}

@freezed
abstract class Patch with _$Patch {
  // Contructors
  const factory Patch({
    // General
    required String name,
    required int index,

    // Metadata
    required String author,
    required String note,
    // Settings
    required PatchSettings settings,
    // FXLoop
    required FXLoop fxLoop,
    // EXP
    required Exp exp1a,
    required Exp exp1b,
    required Exp exp2,
    // required List<Exp> exps,
    // Knob
    required List<Knob> knobs,
    // CTRL
    required List<Ctrl> ctrls,
    // effects
    required List<EffectType> effectsChainOrder,
    required List<Effect> effects,
  }) = _Patch;
}
