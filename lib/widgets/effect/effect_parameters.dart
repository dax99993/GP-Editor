import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/parameters/combox_parameter.dart';
import 'package:gp_editor/models/parameters/knob_parameter.dart';
import 'package:gp_editor/models/parameters/parameter.dart';
import 'package:gp_editor/models/parameters/slider_parameter.dart';
import 'package:gp_editor/models/parameters/switch_parameter.dart';
import 'package:gp_editor/models/patch/patch.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';
import 'package:gp_editor/widgets/input/input_switch_widget.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';

enum Test { ddd, unit, end2end }

class EffectParameters extends ConsumerWidget {
  EffectParameters({super.key});

  // final Effect _effect = defaultEffects[EffectType.dly]!.elementAt(2);

  Widget mapParameter(Parameter param) {
    if (param is KnobParameter) {
      return InputSliderWidget(
        key: ValueKey(param.hashCode),
        label: param.name,
        value: param.value,
        min: param.min,
        max: param.max,
        step: param.step,
        unit: param.suffix,
        onChanged: (value) => {},
      );
    } else if (param is SliderParameter) {
      return InputSliderWidget(
        key: ValueKey(param.hashCode),
        label: param.name,
        value: param.value,
        min: param.min,
        max: param.max,
        step: param.step,
        unit: param.suffix,
        onChanged: (value) => {},
      );
    } else if (param is SwitchParameter) {
      return InputSwitchWidget(
        key: ValueKey(param.hashCode),
        label: param.name,
        value: param.value != 0,
        onChanged: (value) {},
      );
    } else if (param is ComboxParameter) {
      return InputComboxWidget(
        key: ValueKey(param.hashCode),
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
  Widget build(BuildContext context, WidgetRef ref) {
    final EffectType selectedEffect = ref.watch(
      appProvider.select((app) => app.selectedEffect),
    );
    final patch = ref.watch(patchProvider);
    final effect = patch.effects.firstWhere((e) => e.type == selectedEffect);
    // final effect = ref.watch(patchProvider.select((p) => p.));
    // print(effect.type);
    // print(effect.parameters);

    return Column(
      children: [
        // for (final parameter in _effect.parameters) mapParameter(parameter),
        for (final parameter in effect.parameters) mapParameter(parameter),
      ],
    );
  }
}
