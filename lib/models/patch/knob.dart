import 'package:freezed_annotation/freezed_annotation.dart';

part 'knob.freezed.dart';

enum KnobModule {
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
  patchVolume(11),
  bpm(12),
  off(255);

  final int code;
  const KnobModule(this.code);
}

@freezed
abstract class Knob with _$Knob {
  const factory Knob({
    required int id, // ID of knob in range 0-2
    required KnobModule module, // Module linked to the knob
    required int
    moduleParamId, // Parameter ID of linked effect ; when module is not an effect (patchVol, bpm, off) it is ignored
  }) = _Knob;
}
