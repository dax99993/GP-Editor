import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/patch/exp.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';
import 'package:gp_editor/widgets/input/input_switch_widget.dart';
import 'package:gp_editor/widgets/input/slider_widget.dart';

enum ExpPedal { oneA, oneB, two }

enum ExpModuleSelection { one, two, three }

class ExpSettingsScreen extends StatefulWidget {
  const ExpSettingsScreen({super.key});

  @override
  State<ExpSettingsScreen> createState() => _ExpSettingsScreenState();
}

class _ExpSettingsScreenState extends State<ExpSettingsScreen> {
  ExpPedal _expSelected = ExpPedal.oneA;
  ExpModuleSelection _expModuleSelected = ExpModuleSelection.one;

  @override
  void initState() {
    setState(() {
      _expSelected = ExpPedal.oneA;
      _expModuleSelected = ExpModuleSelection.one;
    });
    super.initState();
  }

  void changeExp(Set<ExpPedal> p) {
    final expSelected = p.first;
    final expIndex = expSelected.index;
    print('EXP Selected $expSelected $expIndex');

    setState(() {
      _expSelected = expSelected;
      _expModuleSelected = ExpModuleSelection.one;
    });
  }

  void changeExpModule(Set<ExpModuleSelection> p) {
    final moduleSelected = p.first;
    final moduleIndex = moduleSelected.index;
    print('Module Selected $moduleSelected $moduleIndex');

    setState(() {
      _expModuleSelected = moduleSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final exp1a = ref.watch(patchProvider.select((p) => p.exp1a));
    // final exp1b = ref.watch(patchProvider.select((p) => p.exp1b));
    // final exp2 = ref.watch(patchProvider.select((p) => p.exp2));

    // Exp exp;
    // if (_expSelected == .oneA) {
    //   exp = exp1a;
    // } else if (_expSelected == .oneB) {
    //   exp = exp1b;
    // } else {
    //   exp = exp2;
    // }

    // ExpSetting expSetting;
    // if (_expModuleSelected == .one) {
    //   expSetting = exp.module1;
    // } else if (_expSelected == .oneB) {
    //   expSetting = exp.module2;
    // } else {
    //   expSetting = exp.module3;
    // }
    // print('exp Settings ${expSetting}');

    return Scaffold(
      appBar: AppBar(title: Text('EXP Settings')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          children: [
            SegmentedButton(
              showSelectedIcon: false,
              segments: const <ButtonSegment<ExpPedal>>[
                ButtonSegment<ExpPedal>(
                  value: ExpPedal.oneA,
                  label: Text('EXP 1A'),
                ),
                ButtonSegment<ExpPedal>(
                  value: ExpPedal.oneB,
                  label: Text('EXP 1B'),
                ),
                ButtonSegment<ExpPedal>(
                  value: ExpPedal.two,
                  label: Text('EXP 2'),
                ),
              ],
              selected: <ExpPedal>{_expSelected},
              onSelectionChanged: changeExp,
            ),
            const SizedBox(height: 16),
            // InputSwitchWidget(
            //   label: 'Enable EXP ${exp.id}',
            //   value: false,
            //   onChanged: (val) {},
            // ),
            SegmentedButton(
              showSelectedIcon: false,
              segments: const <ButtonSegment<ExpModuleSelection>>[
                ButtonSegment<ExpModuleSelection>(
                  value: ExpModuleSelection.one,
                  label: Text('Mod 1'),
                ),
                ButtonSegment<ExpModuleSelection>(
                  value: ExpModuleSelection.two,
                  label: Text('Mod 2'),
                ),
                ButtonSegment<ExpModuleSelection>(
                  value: ExpModuleSelection.three,
                  label: Text('Mod 3'),
                ),
              ],
              selected: <ExpModuleSelection>{_expModuleSelected},
              onSelectionChanged: changeExpModule,
            ),
            const SizedBox(height: 16),
            InputComboxWidget(
              // value: expSetting.module,
              value: ExpModule.dly,
              entries: ExpModule.values.asNameMap(),
              label: 'EXP Module ${_expModuleSelected.index + 1}',
              onChanged: (e) {},
            ),
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
      ),
    );
  }
}
