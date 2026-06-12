import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/screens/edit/effects_screen.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EffectSelectorWidget extends ConsumerWidget {
  const EffectSelectorWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPatch = ref.watch(patchProvider);
    final EffectType selectedEffect = ref.watch(
      appProvider.select((app) => app.selectedEffect),
    );
    final effect = currentPatch.effects.firstWhere(
      (e) => e.type == selectedEffect,
    );

    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EffectsScreen()));
      },
      splashColor: Colors.white,
      child: RoundedCardWidget(
        child: Row(
          children: [
            Text(
              effect.name,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
