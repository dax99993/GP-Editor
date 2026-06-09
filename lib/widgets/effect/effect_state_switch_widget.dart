import 'package:flutter/material.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EffectStateSwitchWidget extends StatefulWidget {
  const EffectStateSwitchWidget({super.key});

  @override
  State<EffectStateSwitchWidget> createState() => _EffectStateSwitch();
}

class _EffectStateSwitch extends State<EffectStateSwitchWidget> {
  var _effectState = false;

  @override
  Widget build(BuildContext context) {
    return RoundedCardWidget(
      horizontalPadding: 0,
      child: Column(
        children: [
          Text(
            EffectType.cab.name.toUpperCase(),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 50, // Adjust to your desired width
            height: 20, // Adjust to your desired height
            child: Transform.scale(
              scale: 0.75,
              child: Switch(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: _effectState,
                onChanged: (bool newValue) {
                  // Update effect state
                  setState(() {
                    _effectState = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
