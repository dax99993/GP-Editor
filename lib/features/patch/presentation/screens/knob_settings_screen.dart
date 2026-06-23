import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/features/effects/data/models/effect.dart';
import 'package:gp_editor/features/patch/data/models/knob.dart';
import 'package:gp_editor/features/patch/presentation/providers/patch_provider.dart';
import 'package:gp_editor/features/parameters/presentation/input_combox_widget.dart';

class KnobSettingsScreen extends StatefulWidget {
  const KnobSettingsScreen({super.key});

  @override
  State<KnobSettingsScreen> createState() => _KnobSettingsScreenState();
}

class _KnobSettingsScreenState extends State<KnobSettingsScreen> {
  int _knobSelected = 0;

  @override
  void initState() {
    setState(() {
      _knobSelected = 0;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print('knob selected ${_knobSelected}');

    return Scaffold(
      appBar: AppBar(title: Text('Knob Settings')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Center(
            child: SegmentedButton(
              showSelectedIcon: false,
              segments: const <ButtonSegment<int>>[
                ButtonSegment<int>(value: 0, label: Text('Knob 1')),
                ButtonSegment<int>(value: 1, label: Text('Knob 2')),
                ButtonSegment<int>(value: 2, label: Text('Knob 3')),
              ],
              selected: <int>{_knobSelected},
              onSelectionChanged: (val) {
                setState(() {
                  _knobSelected = val.first;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: KnobSettings(knobIndex: _knobSelected),
          ),
        ],
      ),
    );
  }
}

class KnobSettings extends ConsumerWidget {
  const KnobSettings({super.key, required this.knobIndex});

  final int knobIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final effects = ref.watch(patchProvider.select((p) => p.effects));
    final knobs = ref.watch(patchProvider.select((p) => p.knobs));
    final knob = knobs[knobIndex];

    Effect? effect;
    try {
      effect = effects.firstWhere((e) => e.type.code == knob.module.code);
    } on StateError {
      effect = null;
    }

    // print('knob module ${knob.module} ${knob.module.code}');

    return Column(
      children: [
        InputComboxWidget(
          key: ValueKey(knob.id),
          value: knob.module,
          entries: KnobModule.values.asNameMap(),
          label: 'Knob Module',
          onChanged: (val) {
            // print('Change ${knob.id} module to ${val.name}');
            ref
                .read(patchProvider.notifier)
                .setKnobModule(knobId: knobIndex, knobModule: val);
          },
        ),
        if (effect != null)
          InputComboxWidget(
            key: ValueKey('${knob.id}-Effect'),
            value: knob.moduleParamId,
            entries: {for (var p in effect.parameters) p.name: p.id},
            label: 'Module parameter',
            onChanged: (val) {
              // print('Change module effect param id to $val');
              ref
                  .read(patchProvider.notifier)
                  .setKnob(
                    knobId: knobIndex,
                    knobModule: knob.module,
                    moduleParamId: val,
                  );
            },
          ),
      ],
    );
  }
}
