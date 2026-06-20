import 'package:flutter/material.dart';
import 'package:gp_editor/screens/settings/patch_settings_screen.dart';
import 'package:gp_editor/widgets/effect/effect_chain_widget.dart';
import 'package:gp_editor/widgets/effect/effect_parameters.dart';
import 'package:gp_editor/widgets/effect/effect_selector_widget.dart';
import 'package:gp_editor/widgets/effect/effect_state_switch_widget.dart';

enum PatchScreen { edit, settings }

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  PatchScreen _selectedOption = .edit;

  final patchSettingsScreen = PatchSettingsScreen();
  final effectChainWidget = EffectChainWidget();
  final effectStateSwitchWidget = EffectStateSwitchWidget();
  final effectSelectorhWidget = EffectSelectorWidget();
  final effectParametersWidget = EffectParameters();

  Widget _buildEffectBar() {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          effectStateSwitchWidget,
          const SizedBox(width: 4),
          Expanded(child: effectSelectorhWidget),
        ],
      ),
    );
  }

  Widget _buildToggleButtons() {
    return SegmentedButton(
      showSelectedIcon: false,
      segments: const <ButtonSegment<PatchScreen>>[
        ButtonSegment<PatchScreen>(
          value: .edit,
          label: Text('Edit'),
          // icon: Icon(Icons.number),
        ),
        ButtonSegment<PatchScreen>(
          value: .settings,
          label: Text('Patch Settings'),
          // icon: Icon(Icons.calendar_view_day),
        ),
      ],
      selected: <PatchScreen>{_selectedOption},
      onSelectionChanged: (p) => setState(() {
        _selectedOption = p.first;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildToggleButtons(),
                const SizedBox(height: 16),
                if (_selectedOption == .edit) ...[
                  effectChainWidget,
                  const SizedBox(height: 16),
                  _buildEffectBar(),
                  effectParametersWidget,
                ] else
                  patchSettingsScreen,
              ],
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: _selectedOption == .edit
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          _buildToggleButtons(),
                          const SizedBox(height: 16),
                          effectChainWidget,
                        ],
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _buildEffectBar(),
                              const SizedBox(height: 16),
                              effectParametersWidget,
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      _buildToggleButtons(),
                      const SizedBox(height: 16),
                      Expanded(child: patchSettingsScreen),
                    ],
                  ),
          );
        }
      },
    );
  }
}
