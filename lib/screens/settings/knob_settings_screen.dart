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
  KnobOption _knobView = .knob1;
  Widget _content = Placeholder();

  @override
  void initState() {
    final knob1 = ref.read(patchProvider.select((p) => p.knob1));
    setState(() {
      _content = KnobSettings(knobOption: _knobView, knobModule: knob1.module);
    });

    super.initState();
  }

  void changeKnobView(Set<KnobOption> p) {
    final knobOption = p.first;
    Knob knob;
    if (knobOption == .knob1) {
      knob = ref.read(patchProvider.select((p) => p.knob1));
    } else if (knobOption == .knob2) {
      knob = ref.read(patchProvider.select((p) => p.knob2));
    } else {
      knob = ref.read(patchProvider.select((p) => p.knob3));
    }

    print(p);
    print(knob.module);
    print(knob.effectParamId);

    setState(() {
      _knobView = knobOption;
      _content = KnobSettings(knobOption: knobOption, knobModule: knob.module);
    });
  }

  @override
  Widget build(BuildContext context) {
    final _ = ref.watch(patchProvider.select((p) => p.knob1));
    final _ = ref.watch(patchProvider.select((p) => p.knob2));
    final _ = ref.watch(patchProvider.select((p) => p.knob3));

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
                  // icon: Icon(Icons.number),
                ),
                ButtonSegment<KnobOption>(
                  value: KnobOption.knob2,
                  label: Text('Knob 2'),
                  // icon: Icon(Icons.calendar_view_day),
                ),
                ButtonSegment<KnobOption>(
                  value: KnobOption.knob3,
                  label: Text('Knob 3'),
                  // icon: Icon(Icons.calendar_view_day),
                ),
              ],
              selected: <KnobOption>{_knobView},
              onSelectionChanged: changeKnobView,
            ),
          ),
          _content,
          // KnobSettings(knobOption: .knob1, knobModule: KnobModule.amp),
          // KnobSettings(knobOption: .knob2, knobModule: KnobModule.dst),
          // KnobSettings(knobOption: .knob3, knobModule: KnobModule.bpm),
        ],
      ),
    );
  }
}

class KnobSettings extends StatelessWidget {
  const KnobSettings({
    super.key,
    required this.knobOption,
    required this.knobModule,
  });

  final KnobOption knobOption;
  final KnobModule knobModule;
  // final String moduleParams;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          knobOption.name,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        InputComboxWidget(
          value: knobModule,
          entries: KnobModule.values.asNameMap(),
          label: 'Knob Module',
          onChanged: (val) {
            print('Change ${knobOption.name} module to ${val.name}');
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
