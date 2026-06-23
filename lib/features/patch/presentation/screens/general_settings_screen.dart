import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/features/patch/presentation/providers/patch_provider.dart';
import 'package:gp_editor/features/parameters/presentation/input_slider_widget.dart';

class GeneralSettingsScreen extends ConsumerWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(patchProvider.select((p) => p.settings));
    final volume = settings.volume;
    final pan = settings.pan;
    final bpm = settings.bpm;

    // print('Settings $settings');

    return Scaffold(
      appBar: AppBar(title: Text('General Settings')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          children: [
            InputSliderWidget(
              value: volume.toDouble(),
              min: 0,
              max: 100,
              step: 1,
              label: 'Volume',
              onChanged: (val) {
                ref.read(patchProvider.notifier).setVolume(val.toInt());
              },
            ),
            InputSliderWidget(
              value: pan.toDouble(),
              min: -100,
              max: 100,
              step: 1,
              label: 'Pan',
              onChanged: (val) {
                ref.read(patchProvider.notifier).setPan(val.toInt());
              },
            ),
            InputSliderWidget(
              value: bpm.toDouble(),
              min: 40,
              max: 250,
              step: 1,
              label: 'BPM',
              onChanged: (val) {
                ref.read(patchProvider.notifier).setBpm(val.toInt());
              },
            ),
          ],
        ),
      ),
    );
  }
}
