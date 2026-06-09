import 'package:gp_editor/models/effect/effect.dart';

class Ctrl {
  final int id; // id of ctrl in range 0-7
  // final int mode; // mode yellow -> 0 ; red -> 1
  final List<EffectType> effects;

  Ctrl({
    required this.id,
    required this.effects,
  }); // Effects assign to turn on/off
}
