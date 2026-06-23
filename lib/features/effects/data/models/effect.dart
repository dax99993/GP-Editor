import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gp_editor/features/parameters/data/parameter.dart';

part 'effect.freezed.dart';

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

@freezed
abstract class Effect with _$Effect {
  const factory Effect({
    required String name,
    required int id,
    required EffectType type,
    // Parameters
    required List<Parameter> parameters,
    // Extra useful fields
    @Default(false) bool state,
    int? cabCode,
  }) = _Effect;
}
