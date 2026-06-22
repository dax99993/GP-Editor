import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/screens/edit/patches_screen.dart';
import 'package:gp_editor/screens/home_screen.dart';
import 'package:gp_editor/screens/settings/patch_settings_screen.dart';
import 'package:gp_editor/widgets/effect/effect_chain_widget.dart';
import 'package:gp_editor/widgets/effect/effect_parameters.dart';
import 'package:gp_editor/widgets/effect/effect_selector_widget.dart';
import 'package:gp_editor/widgets/effect/effect_state_switch_widget.dart';

enum PatchScreen { edit, settings }

class PatchEditScreen extends ConsumerStatefulWidget {
  const PatchEditScreen({super.key});

  @override
  ConsumerState<PatchEditScreen> createState() => _PatchEditScreenState();
}

class _PatchEditScreenState extends ConsumerState<PatchEditScreen> {
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
    final patchName = ref.watch(patchProvider.select((p) => p.name));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (route) => false,
            );
          },
          icon: Icon(Icons.home),
        ),
        // title: RoundedCard(child: Text('Patch Name')),
        title: ElevatedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => PatchesScreen()));
          },
          child: Text(patchName),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
          IconButton(onPressed: () {}, icon: Icon(Icons.save)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
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
      ),
    );
  }
}
