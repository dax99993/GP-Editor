enum FXLoopMode {
  parallel(0),
  series(1);

  final int code;
  const FXLoopMode(this.code);
}

class FXLoop {
  final double sendLevel; //in range 0-100
  final double returnLevel; //in range 0-100
  final int sendPosition; // in-range 0-10
  final int returnPosition; // in range 0-10 & <= sendPosition
  final FXLoopMode mode;

  FXLoop({
    required this.sendLevel,
    required this.returnLevel,
    required this.sendPosition,
    required this.returnPosition,
    required this.mode,
  });
}
