import 'package:flutter/material.dart';
import 'package:gp_editor/models/patch/knob.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';

enum KnobOption { knob1, knob2, knob3 }

class KnobSettingsScreen extends StatefulWidget {
  const KnobSettingsScreen({super.key});

  @override
  State<KnobSettingsScreen> createState() => _KnobSettingsScreenState();
}

class _KnobSettingsScreenState extends State<KnobSettingsScreen> {
  KnobOption _knobView = .knob1;

  @override
  Widget build(BuildContext context) {
    Widget content;
    if (_knobView == .knob1) {
      content = KnobSettings(title: 'Knob 1');
    } else if (_knobView == .knob2) {
      content = KnobSettings(title: 'Knob 2');
    } else {
      content = KnobSettings(title: 'Knob 3');
    }

    return Scaffold(
      appBar: AppBar(title: Text('Knob Settings')),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
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
              onSelectionChanged: (p) => setState(() {
                _knobView = p.first;
              }),
            ),
          ),
          content,
        ],
      ),
    );
  }
}

class KnobSettings extends StatelessWidget {
  const KnobSettings({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        InputComboxWidget(
          value: KnobModule.amp,
          entries: KnobModule.values.asNameMap(),
          label: 'Knob Module',
          onChanged: (val) {},
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
