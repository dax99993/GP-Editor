import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/patch/ctrl.dart';
import 'package:gp_editor/models/patch/exp.dart';
import 'package:gp_editor/models/patch/fxloop.dart';
import 'package:gp_editor/models/patch/knob.dart';

// enum PatchCategory {
//   metal, pop
// }

class PatchSettings {
  final int volume;
  final int pan;
  final int bpm;

  PatchSettings({required this.volume, required this.pan, required this.bpm});
}

class Patch {
  // General
  final String name;
  final int index;

  // Metadata
  // final PatchCategory category;
  final String author;
  final String note;

  // Settings
  // final int volume;
  // final int pan;
  // final int bpm;
  final PatchSettings settings;

  // FXLoop
  final FXLoop fxLoop;

  // EXP
  // final List<Exp> exps;
  final Exp exp1a;
  final Exp exp1b;
  final Exp exp2;

  // Knob
  // final List<Knob> knobs;
  final Knob knob1;
  final Knob knob2;
  final Knob knob3;

  // Ctrl
  // final List<Ctrl> ctrls;
  final Ctrl ctrl1;
  final Ctrl ctrl2;
  final Ctrl ctrl3;
  final Ctrl ctrl4;

  final Ctrl ctrl5;
  final Ctrl ctrl6;
  final Ctrl ctrl7;
  final Ctrl ctrl8;

  // Effects
  final List<int> effectsChainOrder;
  final List<Effect> effects;

  // Contructors
  Patch({
    required this.name,
    required this.index,
    required this.author,
    required this.note,
    // required this.volume,
    // required this.pan,
    // required this.bpm,
    required this.settings,
    required this.fxLoop,
    required this.exp1a,
    required this.exp1b,
    required this.exp2,
    required this.knob1,
    required this.knob2,
    required this.knob3,
    required this.ctrl1,
    required this.ctrl2,
    required this.ctrl3,
    required this.ctrl4,
    required this.ctrl5,
    required this.ctrl6,
    required this.ctrl7,
    required this.ctrl8,
    required this.effectsChainOrder,
    required this.effects,
  });

  // Methods
}
