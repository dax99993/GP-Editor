import 'dart:ffi';

import 'package:gp_editor/models/parameters/parameter.dart';

enum EffectType {
  pre(0),
  wah(1),
  dst(2),
  amp(3),
  nr(4),
  cab(5),
  eq(6),
  mod(7),
  dly(8),
  rvb(9),
  vol(10);

  final int code;
  const EffectType(this.code);
}

class Effect {
  Effect({
    required this.name,
    required this.id,
    // required this.description,
    required this.type,
    // required this.state,
    required this.parameters,
    this.cabCode,
  }) : state = false;

  final String name;
  // final Uint32 id;
  final int id;
  // final String description;
  final EffectType type;
  final bool state;
  final int? cabCode;

  // Parameters
  final List<Parameter> parameters;
}
