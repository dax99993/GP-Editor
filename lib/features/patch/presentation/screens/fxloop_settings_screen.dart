import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/features/patch/data/models/fxloop.dart';
import 'package:gp_editor/features/patch/presentation/providers/patch_provider.dart';
import 'package:gp_editor/features/parameters/presentation/input_combox_widget.dart';
import 'package:gp_editor/features/parameters/presentation/input_slider_widget.dart';
import 'package:gp_editor/features/patch/presentation/widgets/fxloop_position_widget.dart';
import 'package:gp_editor/core/widgets/rounded_card_widget.dart';

class FxloopSettingsScreen extends ConsumerWidget {
  const FxloopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fxloopSettings = ref.watch(patchProvider.select((p) => p.fxLoop));
    final sendLevel = fxloopSettings.sendLevel;
    final returnLevel = fxloopSettings.returnLevel;
    final mode = fxloopSettings.mode;

    print('FXLoop $fxloopSettings');

    return Scaffold(
      appBar: AppBar(title: Text('FX Loop Settings')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          children: [
            RoundedCardWidget(
              horizontalPadding: 16,
              verticalPadding: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Loop Position',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FxloopPositionWidget(),
                ],
              ),
            ),
            InputSliderWidget(
              value: sendLevel,
              min: 0,
              max: 100,
              step: 1,
              label: 'Send Level',
              onChanged: (val) {
                ref.read(patchProvider.notifier).setFxLoopSendLevel(val);
              },
            ),
            InputSliderWidget(
              value: returnLevel,
              min: 0,
              max: 100,
              step: 1,
              label: 'Return Level',
              onChanged: (val) {
                ref.read(patchProvider.notifier).setFxLoopReturnLevel(val);
              },
            ),
            InputComboxWidget(
              value: mode,
              entries: FXLoopMode.values.asNameMap(),
              label: 'Mode',
              onChanged: (val) {
                ref.read(patchProvider.notifier).setFxLoopMode(val);
              },
            ),
          ],
        ),
      ),
    );
  }
}
