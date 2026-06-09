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

class Knob {
  final int id; // ID of knob in range 0-2
  final KnobModule module; // Module linked to the knob
  final int
  effectParamId; // Parameter ID of linked effect ; when module is not an effect (patchVol, bpm, off) it is ignored

  Knob({
    required this.id,
    required this.module,
    required this.effectParamId,
  }); //
}
