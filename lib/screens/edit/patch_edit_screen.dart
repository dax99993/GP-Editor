import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/effect/effect_chain_widget.dart';
import 'package:gp_editor/widgets/effect/effect_parameters.dart';
import 'package:gp_editor/widgets/effect/effect_selector_widget.dart';
import 'package:gp_editor/widgets/effect/effect_state_switch_widget.dart';

class PatchEditScreen extends StatelessWidget {
  const PatchEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EffectChainWidget(),
        const SizedBox(height: 16),
        SizedBox(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EffectStateSwitchWidget(),
              const SizedBox(width: 4),
              Expanded(child: EffectSelectorWidget()),
            ],
          ),
        ),
        const SizedBox(height: 16),
        EffectParameters(),
      ],
    );
  }
}
