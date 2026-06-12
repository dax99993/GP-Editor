import 'package:flutter/material.dart';
import 'package:gp_editor/models/patch/fxloop.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';
import 'package:gp_editor/widgets/input/input_range_slider_widget.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';

class FxloopSettingsScreen extends StatelessWidget {
  const FxloopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FX Loop Settings')),
      body: Column(
        children: [
          InputRangeSliderWidget(
            value: 0,
            min: 0,
            max: 11,
            step: 1,
            label: 'Fx Loop positions',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: 0,
            min: 0,
            max: 100,
            step: 1,
            label: 'Send Level',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: 0,
            min: 0,
            max: 100,
            step: 1,
            label: 'Return Level',
            onChanged: (val) {},
          ),
          InputComboxWidget(
            value: FXLoopMode.parallel,
            entries: FXLoopMode.values.asNameMap(),
            label: 'Mode',
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }
}
