import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EffectStateSwitchWidget extends ConsumerWidget {
  const EffectStateSwitchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EffectType selectedEffect = ref.watch(
      appProvider.select((app) => app.selectedEffect),
    );
    final effect = ref.watch(
      patchProvider.select(
        (p) => p.effects.firstWhere((e) => e.type == selectedEffect),
      ),
    );

    print('Effect State (${selectedEffect.name}): ${effect.state}');

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
                value: effect.state,
                onChanged: (bool newValue) {
                  ref
                      .read(patchProvider.notifier)
                      .setEffectState(selectedEffect, newValue);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
