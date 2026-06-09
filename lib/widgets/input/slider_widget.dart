import 'dart:ui';

import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _normalizedValue = 0.0;
  double _currentValue = 0.0;
  double _width = 200;
  double _min = 10;
  double _max = 50;

  void _onDragStart(DragStartDetails details) {
    final dx = details.localPosition.dx;
    final startPosition = dx / _width;
    print(dx);
    print(startPosition);

    setState(() {
      _normalizedValue = clampDouble(startPosition, 0, 1);
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    // print('G = ${details.globalPosition}');
    // print('L = ${details.localPosition}');
    // print('D = ${details.delta}');

    final startPosition = details.localPosition / _width;
    print('SP =  $startPosition');
    final delta = -details.delta.dx;

    final newValue = _currentValue - delta * (_max - _min) / 100;
    // print(newValue);

    setState(() {
      _normalizedValue -= delta / 100;
      _normalizedValue = clampDouble(_normalizedValue, 0, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragStart: _onDragStart,
      child: Container(
        height: 40,
        width: _width,
        child: CustomPaint(
          painter: SliderPainter(
            percentage: _normalizedValue,
            value: _normalizedValue.toStringAsFixed(3),
          ),
        ),
      ),
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
