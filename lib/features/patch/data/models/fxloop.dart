import 'package:freezed_annotation/freezed_annotation.dart';

part 'fxloop.freezed.dart';

enum FXLoopMode {
  parallel(0),
  series(1);

  final int code;
  const FXLoopMode(this.code);
}

@freezed
abstract class FXLoop with _$FXLoop {
  const factory FXLoop({
    required double sendLevel, //in range 0-100
    required double returnLevel, //in range 0-100
    required int sendPosition, // in-range 0-10
    required int returnPosition, // in range 0-10 & <= sendPosition
    required FXLoopMode mode,
  }) = _FXLoop;
}
