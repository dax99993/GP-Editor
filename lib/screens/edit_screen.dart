import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/effect/effect_chain_widget.dart';
import 'package:gp_editor/widgets/effect/effect_parameters.dart';
import 'package:gp_editor/widgets/effect/effect_selector_widget.dart';
import 'package:gp_editor/widgets/effect/effect_state_switch_widget.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  var _selectedEditMode = [true, false];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ToggleButtons(
                  fillColor: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                  selectedColor: Colors.white,
                  selectedBorderColor: Colors.white,
                  isSelected: _selectedEditMode,
                  children: [
                    Text(
                      'Edit',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 0,
                      ),
                      child: Text(
                        'Patch Settings',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                  onPressed: (index) {
                    setState(() {
                      final toggles = List.filled(2, false, growable: false);
                      toggles[index] = true;
                      _selectedEditMode = toggles;
                    });
                  },
                ),
                const SizedBox(height: 16),
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
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ToggleButtons(
                      fillColor: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                      selectedColor: Colors.white,
                      selectedBorderColor: Colors.white,
                      isSelected: _selectedEditMode,
                      children: [
                        Text(
                          'Edit',
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 0,
                          ),
                          child: Text(
                            'Patch Settings',
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                      onPressed: (index) {
                        setState(() {
                          final toggles = List.filled(
                            2,
                            false,
                            growable: false,
                          );
                          toggles[index] = true;
                          _selectedEditMode = toggles;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    EffectChainWidget(),
                  ],
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
