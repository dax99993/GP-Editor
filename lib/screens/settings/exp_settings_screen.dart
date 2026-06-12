import 'package:flutter/material.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';
import 'package:gp_editor/widgets/input/input_switch_widget.dart';
import 'package:gp_editor/widgets/input/slider_widget.dart';

class ExpSettingsScreen extends StatelessWidget {
  const ExpSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EXP Settings')),

      body: Column(
        children: [
          Text('Buttons to select EXP1A, EXP1B, EXP2'),
          InputSwitchWidget(
            label: 'Enable EXP',
            value: false,
            onChanged: (val) {},
          ),
          Wrap(
            spacing: 12.0, // Gap between adjacent images (horizontal)
            runSpacing: 8.0, // Gap between rows (vertical)
            alignment:
                WrapAlignment.center, // Aligns items to the start of the line
            children: EffectType.values
                .map(
                  (e) => SizedBox(
                    width: 50,
                    child: Image.asset('images/${e.name.toUpperCase()}_on.png'),
                  ),
                )
                .toList(),
          ),
          Text('Setup range'),
          InputSliderWidget(
            value: 50,
            min: 0,
            max: 100,
            step: 1,
            label: 'Min',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: 50,
            min: 0,
            max: 100,
            step: 1,
            label: 'Max',
            onChanged: (val) {},
          ),
          SizedBox(
            width: 250,
            child: SliderWidget(value: 24, min: 10, max: 60),
          ),
          Row(
            children: [
              Text('Min'),
              Expanded(child: SliderWidget(value: 24, min: 10, max: 60)),
            ],
          ),
        ],
      ),
    );
  }
}
