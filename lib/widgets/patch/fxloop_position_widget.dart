import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/theme.dart';

class FxloopPositionWidget extends ConsumerWidget {
  const FxloopPositionWidget({super.key, this.showLabels = true});

  final bool showLabels;

  String mapValue(List<EffectType> chain, double value) {
    int i = value.round();
    if (i == 11) {
      return 'END';
    } else {
      return chain[i].name.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sendPosition = ref.watch(
      patchProvider.select((p) => p.fxLoop.sendPosition),
    );
    final returnPosition = ref.watch(
      patchProvider.select((p) => p.fxLoop.returnPosition),
    );
    final chainOrder = ref.watch(
      patchProvider.select((p) => p.effectsChainOrder),
    );

    final values = RangeValues(
      sendPosition.toDouble(),
      returnPosition.toDouble(),
    );

    return SliderTheme(
      data: const SliderThemeData(
        rangeThumbShape: CircleThumbShape(thumbRadius: 12),
        trackHeight: 14,
        showValueIndicator: ShowValueIndicator.onDrag,
        valueIndicatorStrokeColor: Colors.black,
        valueIndicatorColor: Colors.white,
        valueIndicatorTextStyle: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: RangeSlider(
        values: values,
        min: 0,
        max: 11,
        divisions: 11, // Enables discrete steps and tick marks
        labels: showLabels
            ? RangeLabels(
                mapValue(chainOrder, values.start),
                mapValue(chainOrder, values.end),
              )
            : null,
        onChanged: (RangeValues newValues) {
          ref
              .read(patchProvider.notifier)
              .setFxLoopPosition(
                newValues.start.round(),
                newValues.end.round(),
              );
        },
      ),
    );
  }
}

class CircleThumbShape extends RangeSliderThumbShape {
  const CircleThumbShape({this.thumbRadius = 10.0});

  final double thumbRadius;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required SliderThemeData sliderTheme,
    bool? isDiscrete,
    bool? isEnabled,
    bool? isOnTop,
    TextDirection? textDirection,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final Canvas canvas = context.canvas;

    final Paint fillPaint = Paint()
      ..color = thumb == Thumb.start
          ? themeColors.fxInputColor
          : themeColors.fxOutputColor
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = sliderTheme.activeTrackColor ?? Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas
      ..drawCircle(center, thumbRadius, fillPaint)
      ..drawCircle(center, thumbRadius, borderPaint);

    // final textStyle = TextStyle(
    //   color: sliderTheme.valueIndicatorColor ?? Colors.white,
    //   fontSize: thumbRadius * 1.0,
    //   fontWeight: FontWeight.bold,
    // );
    // final textSpan = TextSpan(text: 'O', style: textStyle);
    // final TextPainter textPainter = TextPainter(
    //   text: textSpan,
    //   textAlign: TextAlign.center,
    //   textDirection: textDirection,
    // );
    // textPainter.layout();

    // final textOffset = Offset(
    //   center.dx - textPainter.width / 2,
    //   center.dy - textPainter.height / 2,
    // );

    // textPainter.paint(canvas, textOffset);
  }
}
