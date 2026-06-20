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
    // Knob
    required Knob knob1,
    required Knob knob2,
    required Knob knob3,
    // CTRL
    required Ctrl ctrl1,
    required Ctrl ctrl2,
    required Ctrl ctrl3,
    required Ctrl ctrl4,
    required Ctrl ctrl5,
    required Ctrl ctrl6,
    required Ctrl ctrl7,
    required Ctrl ctrl8,
    // effects
    required List<EffectType> effectsChainOrder,
    required List<Effect> effects,
  }) = _Patch;
}
