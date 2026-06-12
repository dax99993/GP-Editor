import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('General Settings')),
      body: Column(
        children: [
          InputSliderWidget(
            value: 50,
            min: 0,
            max: 100,
            step: 1,
            label: 'Volume',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: 0,
            min: -100,
            max: 100,
            step: 1,
            label: 'Pan',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: 120,
            min: 40,
            max: 250,
            step: 1,
            label: 'BPM',
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }
}
