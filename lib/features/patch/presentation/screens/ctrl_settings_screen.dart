import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/features/effects/data/models/effect.dart';
import 'package:gp_editor/features/patch/presentation/providers/patch_provider.dart';
import 'package:gp_editor/features/effects/presentation/widgets/effect_image_widget.dart';
import 'package:gp_editor/features/parameters/presentation/input_combox_widget.dart';

class CtrlSettingsScreen extends StatefulWidget {
  const CtrlSettingsScreen({super.key});

  @override
  State<CtrlSettingsScreen> createState() => _CtrlSettingsScreenState();
}

class _CtrlSettingsScreenState extends State<CtrlSettingsScreen> {
  int _ctrlSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CTRL Settings')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputComboxWidget(
              label: 'CTRL',
              value: _ctrlSelected,
              onChanged: (v) {
                setState(() {
                  _ctrlSelected = v;
                });
              },
              entries: {
                'CTRL 1': 0,
                'CTRL 2': 1,
                'CTRL 3': 2,
                'CTRL 4': 3,
                'CTRL 5': 4,
                'CTRL 6': 5,
                'CTRL 7': 6,
                'CTRL 8': 7,
              },
            ),
            const SizedBox(height: 8),
            CtrlEffects(id: _ctrlSelected),
          ],
        ),
      ),
    );
  }
}

class CtrlEffects extends ConsumerWidget {
  const CtrlEffects({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ctrls = ref.watch(patchProvider.select((p) => p.ctrls));
    final ctrl = ctrls[id];

    // print('CTRL effects ${ctrl.effects}');

    return Wrap(
      spacing: 4.0, // Gap between adjacent images (horizontal)
      runSpacing: 8.0, // Gap between rows (vertical)
      alignment: WrapAlignment.start, // Aligns items to the start of the line
      children: EffectType.values
          .map(
            (e) => _buildEffectCheckbox(
              effectType: e,
              state: ctrl.effects.contains(e),
              onTap: () {
                ref.read(patchProvider.notifier).toggleCtrlEffect(id, e);
              },
            ),
          )
          .toList(),
    );
  }

  Widget _buildEffectCheckbox({
    required EffectType effectType,
    required bool state,
    required void Function() onTap,
  }) {
    return SizedBox(
      width: 50,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          onTap();
        },
        child: Stack(
          alignment: AlignmentGeometry.topRight,
          children: [
            EffectImageWidget(
              effectType: effectType,
              state: true,
              isSelected: false,
            ),
            _buildCheckbox(state: state),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckbox({required bool state}) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.black,
        border: BoxBorder.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Container(
          decoration: BoxDecoration(
            color: state ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
