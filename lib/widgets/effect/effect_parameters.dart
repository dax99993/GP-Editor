import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';
import 'package:gp_editor/widgets/input/input_custom_slider_widget.dart';
import 'package:gp_editor/widgets/input/input_toggle_widget.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';

enum Test { ddd, unit, end2end }

class EffectParameters extends StatelessWidget {
  const EffectParameters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputSliderWidget(
          label: 'Param 1',
          value: 0.7,
          min: 0.0,
          max: 1.0,
          step: 0.1,
          unit: 'ms',
          onChanged: (value) => {},
        ),
        InputSliderWidget(
          label: 'Param 2',
          value: 5,
          min: 0,
          max: 100,
          step: 1,
          onChanged: (value) => {},
        ),
        InputToggleWidget(
          value: false,
          label: 'Param 3',
          onChanged: (value) {},
        ),
        InputComboxWidget(
          label: 'Param 4',
          value: Test.unit,
          entries: Test.values,
          onChanged: (val) {
            print(val);
          },
        ),
      ],
    );
  }
}
