import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gp_editor/features/effects/data/models/effect.dart';

part 'ctrl.freezed.dart';

@freezed
abstract class Ctrl with _$Ctrl {
  const factory Ctrl({
    required int id, // id of ctrl in range 0-7
    // final int mode; // mode yellow -> 0 ; red -> 1
    required List<EffectType> effects,
  }) = _Ctrl; // Effects assign to turn on/off
}
