import 'package:freezed_annotation/freezed_annotation.dart';

part 'exp.freezed.dart';

enum ExpId { exp1A, exp1B, exp2 }

enum ExpParamId { param1, param2, param3 }

enum ExpModule {
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
  vol(10),
  off(255);

  final int code;
  const ExpModule(this.code);
}

@freezed
abstract class Exp with _$Exp {
  const factory Exp({
    required ExpId id, // EXP ID in range 0-2 [EXP1A, EXP1B, EXP2]
    required ExpParamId
    paramId, // Each EXP pedal can be assigned to change 3 different effects / modules
    required ExpModule module, // To which module (effect) is it linked
    required int moduleParamId, // Parameter in module
    required double
    moduleParamMinValue, // Parameter minimum value (pedal pressed)
    required double
    moduleParamMaxValue, // Parameter maximum value (pedal lifted)
  }) = _Exp;
}
