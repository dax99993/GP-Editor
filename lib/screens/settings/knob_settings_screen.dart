import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/patch/knob.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';

enum KnobOption { knob1, knob2, knob3 }

class KnobSettingsScreen extends ConsumerStatefulWidget {
  const KnobSettingsScreen({super.key});

  @override
  ConsumerState<KnobSettingsScreen> createState() => _KnobSettingsScreenState();
}

class _KnobSettingsScreenState extends ConsumerState<KnobSettingsScreen> {
  KnobOption _knobSelected = .knob1;
  // Widget _content = Placeholder();

  @override
  void initState() {
    // final knob1 = ref.read(patchProvider.select((p) => p.knob1));
    setState(() {
      _knobSelected = .knob1;
      // _content = KnobSettings(
      //   knobOption: _knobSelected,
      //   knobModule: knob1.module,
      // );
    });

    super.initState();
  }

  void changeKnobView(Set<KnobOption> p) {
    final knobSelected = p.first;

    // Knob knob;
    // if (knobOption == .knob1) {
    //   knob = ref.read(patchProvider.select((p) => p.knob1));
    // }

    print('Selected Knob $knobSelected');

    setState(() {
      _knobSelected = knobSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _ = ref.watch(patchProvider.select((p) => p.knob1));
    // final _ = ref.watch(patchProvider.select((p) => p.knob2));
    // final _ = ref.watch(patchProvider.select((p) => p.knob3));

    // final knobs = ref.watch(patchProvider.select((p) => p.knobs));
    // final knob = knobs[_knobSelected.index];

    print('knob selected ${_knobSelected}');

    return Scaffold(
      appBar: AppBar(title: Text('Knob Settings')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SegmentedButton(
              showSelectedIcon: false,
              segments: const <ButtonSegment<KnobOption>>[
                ButtonSegment<KnobOption>(
                  value: KnobOption.knob1,
                  label: Text('Knob 1'),
                ),
                ButtonSegment<KnobOption>(
                  value: KnobOption.knob2,
                  label: Text('Knob 2'),
                ),
                ButtonSegment<KnobOption>(
                  value: KnobOption.knob3,
                  label: Text('Knob 3'),
                ),
              ],
              selected: <KnobOption>{_knobSelected},
              onSelectionChanged: changeKnobView,
            ),
          ),
          KnobSettings(knobIndex: _knobSelected.index),
          // _content,
          // KnobSettings(knobOption: .knob1, knobModule: KnobModule.amp),
          // KnobSettings(knobOption: .knob2, knobModule: KnobModule.dst),
          // KnobSettings(knobOption: .knob3, knobModule: KnobModule.bpm),
        ],
      ),
    );
  }
}

// class KnobSettings extends StatelessWidget {
//   const KnobSettings({
//     super.key,
//     required this.knobOption,
//     required this.knobModule,
//   });

//   final KnobOption knobOption;
//   final KnobModule knobModule;
//   // final String moduleParams;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           knobOption.name,
//           style: Theme.of(
//             context,
//           ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 8),
//         InputComboxWidget(
//           value: knobModule,
//           entries: KnobModule.values.asNameMap(),
//           label: 'Knob Module',
//           onChanged: (val) {
//             print('Change ${knobOption.name} module to ${val.name}');
//           },
//         ),
//         InputComboxWidget(
//           value: KnobModule.nr,
//           entries: KnobModule.values.asNameMap(),
//           label: 'Module parameter',
//           onChanged: (val) {},
//         ),
//       ],
//     );
//   }
// }

class KnobSettings extends ConsumerWidget {
  const KnobSettings({super.key, required this.knobIndex});

  final int knobIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final knobs = ref.watch(patchProvider.select((p) => p.knobs));
    final knob = knobs[knobIndex];

    print('knob module ${knob.module}');

    return Column(
      children: [
        Text(
          knob.id.toString(),
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text('Module ${knob.module.name}'),
        Text('Effect Param ${knob.effectParamId}'),
        InputComboxWidget(
          value: knob.module,
          entries: KnobModule.values.asNameMap(),
          label: 'Knob Module',
          onChanged: (val) {
            print('Change ${knob.id} module to ${val.name}');
          },
        ),
        InputComboxWidget(
          value: KnobModule.nr,
          entries: KnobModule.values.asNameMap(),
          label: 'Module parameter',
          onChanged: (val) {},
        ),
      ],
    );
  }
}
