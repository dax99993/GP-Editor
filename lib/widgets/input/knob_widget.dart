import 'package:flutter/material.dart';
import 'dart:math';

enum DragDirection { vertical, horizontal, both }

class KnobWidget extends StatefulWidget {
  const KnobWidget({
    super.key,
    required this.onChanged,
    required this.size,
    required this.value,
    required this.min,
    required this.max,
    this.interval,
    required this.trackColor,
    required this.levelColor,
    required this.knobColor,
    required this.indicatorColor,
    this.levelColorStart,
    this.levelColorEnd,
  });

  final dragDirection = DragDirection.horizontal;
  final ValueChanged<double> onChanged;

  final double value;
  final double min;
  final double max;
  final double? interval;
  final Color trackColor;
  final Color? levelColorStart;
  final Color? levelColorEnd;
  final Color levelColor;
  final Color knobColor;
  final Color indicatorColor;
  final double size;

  @override
  State<KnobWidget> createState() => _KnobWidgetState();
}

class _KnobWidgetState extends State<KnobWidget> {
  double _currentValue = 0;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  @override
  void didUpdateWidget(covariant KnobWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _currentValue = widget.value;
    }
  }

  //  int snapToInterval(int value, int interval) {
  //     return (value ~/ interval) * interval;
  //   }

  double snapToInterval(double value, double interval) {
    return (value / interval).round() * interval;
  }

  void _onPanUpdate(DragUpdateDetails details) {
    final dx = details.delta.dx;
    final dy = details.delta.dy;
    double delta;
    switch (widget.dragDirection) {
      case DragDirection.vertical:
        delta = dy;
      case DragDirection.horizontal:
        delta = -dx;
      case DragDirection.both:
        delta = -dx + dy;
    }
    // final newValue = _currentValue - delta * (widget.max - widget.min) / 100;
    final newValue = _currentValue - delta * (widget.max - widget.min) / 100;
    final value = newValue <= widget.min
        ? widget.min
        : newValue.clamp(widget.min, widget.max);
    final snapValue = widget.interval != null
        ? snapToInterval(value, widget.interval!)
        : value;

    print(newValue);
    print(value);
    print(snapValue);

    setState(() {
      if (_currentValue != snapValue) {
        _currentValue = snapValue;
        widget.onChanged(_currentValue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate,
      child: CustomPaint(
        size: Size(widget.size, widget.size),
        painter: _KnobPainter(
          value: _currentValue,
          min: widget.min,
          max: widget.max,
          trackColor: widget.trackColor,
          levelColor: widget.levelColor,
          knobColor: widget.knobColor,
          indicatorColor: widget.indicatorColor,
          levelColorStart: widget.levelColorStart,
          levelColorEnd: widget.levelColorEnd,
        ),
      ),
    );
  }
}

class _KnobPainter extends CustomPainter {
  _KnobPainter({
    required this.value,
    required this.min,
    required this.max,
    required this.trackColor,
    this.levelColorStart,
    this.levelColorEnd,
    required this.levelColor,
    required this.knobColor,
    required this.indicatorColor,
  });

  final double value;
  final double min;
  final double max;
  final Color trackColor;
  final Color levelColor;
  final Color? levelColorStart;
  final Color? levelColorEnd;
  final Color knobColor;
  final Color indicatorColor;

  /// Converts the knob value to an angle for drawing the arc.
  double _valueToAngle(double value, double min, double max) {
    return 2 * pi * ((value - min) / (max - min)) * (3 / 4) + pi / 2 + pi / 4;
  }

  void _drawTrack(Canvas canvas, Offset center, double radius) {
    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi / 2 + pi / 4,
      pi * 1.5,
      false,
      trackPaint,
    );
  }

  void _drawLevel(Canvas canvas, Offset center, double radius, double angle) {
    Paint levelPaint;

    if (levelColorStart != null && levelColorEnd != null) {
      final gradient = LinearGradient(
        colors: [levelColorStart!, levelColorEnd!],
      );
      final rect = Rect.fromCircle(center: center, radius: radius);
      levelPaint = Paint()
        ..shader = gradient.createShader(rect)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4
        ..strokeCap = StrokeCap.round;
    } else {
      levelPaint = Paint()
        ..color = levelColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4
        ..strokeCap = StrokeCap.round;
    }

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi / 2 + pi / 4,
      angle - (pi / 2 + pi / 4),
      false,
      levelPaint,
    );
  }

  void _drawText(Canvas canvas, Size size, double value) {
    final textSpan = TextSpan(
      text: value.toStringAsFixed(1),
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr, // Required
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width, // Optional: wrap text within canvas width
    );

    // Center the text
    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );
    textPainter.paint(canvas, offset);
  }

  void _drawKnob(Canvas canvas, Offset center, double radius) {
    final knobPaint = Paint()
      ..color = knobColor
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, radius - 6, knobPaint);
  }

  void _drawIndicator(
    Canvas canvas,
    Offset center,
    double radius,
    double angle,
  ) {
    final indicatorPaint = Paint()
      ..color = indicatorColor
      ..style = PaintingStyle.fill;

    final knobPosition = Offset(
      center.dx + (radius - 14) * cos(angle),
      center.dy + (radius - 14) * sin(angle),
    );

    canvas.drawCircle(knobPosition, 4, indicatorPaint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final angle = _valueToAngle(value, min, max);

    _drawTrack(canvas, center, radius);
    _drawLevel(canvas, center, radius, angle);
    _drawKnob(canvas, center, radius);
    _drawText(canvas, size, value);
    _drawIndicator(canvas, center, radius, angle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
