import 'package:flutter/material.dart';

class RoundedCardWidget extends StatelessWidget {
  const RoundedCardWidget({
    super.key,
    required this.child,
    this.horizontalPadding = 8,
    this.verticalPadding = 8,
    this.borderRadius = 8,
    this.color,
    this.shadowColor,
  });

  final Widget child;
  final double horizontalPadding;
  final double verticalPadding;
  final double borderRadius;
  final Color? color;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Theme.of(context).colorScheme.primaryContainer,
      shadowColor:
          shadowColor ?? Theme.of(context).colorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(borderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: child,
      ),
    );
  }
}
