import 'package:flutter/material.dart';
import 'package:gp_editor/models/effect/effect.dart';

class EffectImageWidget extends StatelessWidget {
  const EffectImageWidget({
    super.key,
    required this.effectType,
    required this.state,
    required this.isSelected,
  });

  final EffectType effectType;
  final bool state;
  final bool isSelected;

  String effectNameToAsset({
    required EffectType effectType,
    required bool state,
    required bool selected,
  }) {
    var assetPath =
        'images/${effectType.name.toUpperCase()}_${state ? 'on' : 'off'}';

    if (isSelected) {
      assetPath += '_selected.png';
    } else {
      assetPath += '.png';
    }

    return assetPath;
  }

  @override
  Widget build(BuildContext context) {
    final assetName = effectNameToAsset(
      effectType: effectType,
      state: state,
      selected: isSelected,
    );
    return Image.asset(assetName, fit: BoxFit.fill);
  }
}
