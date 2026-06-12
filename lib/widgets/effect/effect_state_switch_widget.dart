import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EffectStateSwitchWidget extends ConsumerStatefulWidget {
  const EffectStateSwitchWidget({super.key});

  @override
  ConsumerState<EffectStateSwitchWidget> createState() => _EffectStateSwitch();
}

class _EffectStateSwitch extends ConsumerState<EffectStateSwitchWidget> {
  var _effectState = false;

  @override
  Widget build(BuildContext context) {
    // final app = ref.watch((appProvider.select((app) => app.selectedEffect));
    final EffectType selectedEffect = ref.watch(
      appProvider.select((app) => app.selectedEffect),
    );

    return RoundedCardWidget(
      horizontalPadding: 0,
      child: Column(
        children: [
          Text(
            selectedEffect.name.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
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
