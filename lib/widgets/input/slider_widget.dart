import 'dart:ui';

import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
    required this.value,
    required this.min,
    required this.max,
  });

  final double value;
  final double min;
  final double max;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _width = 100;

  double _normalizedValue = 0.0;
  double _currentValue = 0.0;
  final double _epsilon =
      1e-3; // Epsilon to determine if two doubles are considered different

  @override
  void initState() {
    _currentValue = clampDouble(widget.value, widget.min, widget.max);
    _normalizedValue = (_currentValue - widget.min) / (widget.max - widget.min);
    super.initState();
  }

  void _onDragStart(DragStartDetails details) {
    final dx = details.localPosition.dx;
    final startPosition = dx / _width;

    setState(() {
      _normalizedValue = clampDouble(startPosition, 0, 1);
      _currentValue = lerpDouble(widget.min, widget.max, _normalizedValue)!;
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    final startPosition = (details.localPosition / _width).dx;
    final delta = -details.delta.dx / _width;

    var newValue = startPosition - delta;
    print('NV = $newValue');

    newValue = clampDouble(newValue, 0, 1.0);
    if ((startPosition - newValue).abs() < _epsilon) {
      return;
    }
    print('NV tested = $newValue');

    setState(() {
      _normalizedValue = newValue;
      _currentValue = lerpDouble(widget.min, widget.max, _normalizedValue)!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        _width = constraints.maxWidth;

        return GestureDetector(
          onHorizontalDragUpdate: _onDragUpdate,
          onHorizontalDragStart: _onDragStart,
          child: SizedBox(
            height: 40,
            width: _width,
            child: CustomPaint(
              painter: SliderPainter(
                percentage: _normalizedValue,
                value: _currentValue.toStringAsFixed(3),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SliderPainter extends CustomPainter {
  SliderPainter({required this.percentage, required this.value});
  final String value;
  final strokeColor = Colors.black;
  final fillColor = Colors.blue[900]!;
  final strokeWidth = 2.0;
  final borderRadius = 8.0;
  final double percentage;
  final textPadding = 12;
  final double fontSize = 15;
  final textColor = Colors.white;

  void _paintBorder(Canvas canvas, Size size) {
    // Define the outer rounded rectangle
    final outerRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(outerRect, Radius.circular(8));

    // Configure paint for border only
    final paint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle
          .stroke // Key: Stroke only, no fill
      ..strokeWidth = strokeWidth;

    // Draw the path
    canvas.drawRRect(rrect, paint);
  }

  void _paintFill(Canvas canvas, Size size, double percentage) {
    final paint = Paint()..color = fillColor;

    final width = size.width * percentage;
    final rect = Rect.fromPoints(Offset(0, 0), Offset(width, size.height));

    final startRounding = (size.width - borderRadius) / size.width;

    var rightRadius = 0.0;
    if (percentage > startRounding) {
      rightRadius = lerpDouble(
        0,
        borderRadius,
        lerpDouble(startRounding, 1.0, percentage)!,
      )!;
    }

    final rrect = RRect.fromRectAndCorners(
      rect,
      topLeft: Radius.circular(borderRadius),
      bottomLeft: Radius.circular(borderRadius),
      topRight: Radius.circular(rightRadius),
      bottomRight: Radius.circular(rightRadius),
    );

    canvas.drawRRect(rrect, paint);
  }

  void _paintText(Canvas canvas, Size size, String text) {
    // 1. Define style and content
    final textStyle = TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: FontWeight.bold,
    );
    final textSpan = TextSpan(text: text, style: textStyle);

    // 2. Create and layout the TextPainter
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.start,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);

    // 3. Calculate position (centered in this example)
    final textOffset = Offset(12, (size.height - textPainter.height) / 2);

    // 4. Draw text on canvas
    textPainter.paint(canvas, textOffset);
  }

  void _paintText2(Canvas canvas, Size size, String text) {
    // 1. Define style and content
    final textStyle = TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: FontWeight.bold,
    );
    final textSpan = TextSpan(text: text, style: textStyle);

    // 2. Create and layout the TextPainter
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.start,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);

    // 3. Calculate position (centered in this example)
    final textOffset = Offset(
      (size.width - textPainter.width) - 12,
      (size.height - textPainter.height) / 2,
    );

    // 4. Draw text on canvas
    textPainter.paint(canvas, textOffset);
  }

  @override
  void paint(Canvas canvas, Size size) {
    _paintFill(canvas, size, percentage);
    _paintBorder(canvas, size);
    _paintText(canvas, size, 'AQWE');
    _paintText2(canvas, size, value);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
