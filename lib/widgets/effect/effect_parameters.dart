import 'package:flutter/material.dart';
import 'package:gp_editor/data/default_effects.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/parameters/combox_parameter.dart';
import 'package:gp_editor/models/parameters/knob_parameter.dart';
import 'package:gp_editor/models/parameters/parameter.dart';
import 'package:gp_editor/models/parameters/slider_parameter.dart';
import 'package:gp_editor/models/parameters/switch_parameter.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';
import 'package:gp_editor/widgets/input/input_switch_widget.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';

enum Test { ddd, unit, end2end }

class EffectParameters extends StatelessWidget {
  EffectParameters({super.key});

  final Effect _effect = defaultEffects[EffectType.dly]!.elementAt(2);

  Widget mapParameter(Parameter param) {
    if (param is KnobParameter || param is SliderParameter) {
      return InputSliderWidget(
        label: param.name,
        value: param.value,
        min: param.min,
        max: param.max,
        step: param.step,
        unit: (param as KnobParameter).suffix,
        onChanged: (value) => {},
      );
    } else if (param is SwitchParameter) {
      return InputSwitchWidget(
        label: param.name,
        value: param.value != 0,
        onChanged: (value) {},
      );
    } else if (param is ComboxParameter) {
      return InputComboxWidget(
        label: param.name,
        value: param.value,
        entries: param.entries,
        onChanged: (val) {
          print(val);
        },
      );
    } else {
      return Text('Not implemented');
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_effect.name);
    return Column(
      children: [
        for (final parameter in _effect.parameters) mapParameter(parameter),
      ],
    );

    // return Column(
    //   children: [
    //     InputSliderWidget(
    //       label: 'Param 1',
    //       value: 0.7,
    //       min: 0.0,
    //       max: 1.0,
    //       step: 0.1,
    //       unit: 'ms',
    //       onChanged: (value) => {},
    //     ),
    //     InputSliderWidget(
    //       label: 'Param 2',
    //       value: 5,
    //       min: 0,
    //       max: 100,
    //       step: 1,
    //       onChanged: (value) => {},
    //     ),
    //     InputToggleWidget(
    //       value: false,
    //       label: 'Param 3',
    //       onChanged: (value) {},
    //     ),
    //     InputComboxWidget(
    //       label: 'Param 4',
    //       value: Test.unit,
    //       entries: Test.values,
    //       onChanged: (val) {
    //         print(val);
    //       },
    //     ),
    //   ],
    // );
  }
}
