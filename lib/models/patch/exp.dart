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

class Exp {
  final int id; // EXP ID in range 0-2 [EXP1A, EXP1B, EXP2]
  final ExpSetting module1;
  final ExpSetting module2;
  final ExpSetting module3;

  Exp({
    required this.id,
    required this.module1,
    required this.module2,
    required this.module3,
  }); //
}

class ExpSetting {
  final int settingId; // setting ID in range 0-2
  // Each EXP pedal can be assigned to change 3 different effects / modules
  final ExpModule module; // effect / module Exp pedal is linked to
  final int effectParamId; // Effect ID
  final double moduleParamMinValue; // Min value to map when EXP pedal is lifted
  final double moduleParamMaxValue; // Max value to map when pedal is pressed

  ExpSetting({
    required this.settingId,
    required this.module,
    required this.effectParamId,
    required this.moduleParamMinValue,
    required this.moduleParamMaxValue,
  }); // Max value to map when pedal is pressed
}
