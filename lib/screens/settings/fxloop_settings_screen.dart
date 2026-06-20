import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/patch/fxloop.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/widgets/input/input_combox_widget.dart';
import 'package:gp_editor/widgets/input/input_range_slider_widget.dart';
import 'package:gp_editor/widgets/input/input_slider_widget.dart';

class FxloopSettingsScreen extends ConsumerWidget {
  const FxloopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fxloopSettings = ref.watch(patchProvider.select((p) => p.fxLoop));
    final sendPosition = fxloopSettings.sendPosition;
    final returnPosition = fxloopSettings.returnPosition;
    // TODO: Should i keep this variables being double? although they should be integer?
    final sendLevel = fxloopSettings.sendLevel;
    final returnLevel = fxloopSettings.returnLevel;
    final mode = fxloopSettings.mode;

    return Scaffold(
      appBar: AppBar(title: Text('FX Loop Settings')),
      body: Column(
        children: [
          // TODO: Update Range slider to accept range on input values
          InputRangeSliderWidget(
            // value: sendPosition.toDouble(),
            value: 2,
            min: 0,
            max: 11,
            step: 1,
            label: 'Fx Loop positions',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: sendLevel,
            min: 0,
            max: 100,
            step: 1,
            label: 'Send Level',
            onChanged: (val) {},
          ),
          InputSliderWidget(
            value: returnLevel,
            min: 0,
            max: 100,
            step: 1,
            label: 'Return Level',
            onChanged: (val) {},
          ),
          InputComboxWidget(
            value: mode,
            entries: FXLoopMode.values.asNameMap(),
            label: 'Mode',
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }
}
