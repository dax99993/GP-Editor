import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/features/effects/data/models/effect.dart';
import 'package:gp_editor/features/parameters/data/parameter.dart';
import 'package:gp_editor/features/patch/data/models/exp.dart';
import 'package:gp_editor/features/patch/presentation/providers/patch_provider.dart';
import 'package:gp_editor/features/parameters/presentation/input_combox_widget.dart';
import 'package:gp_editor/features/parameters/presentation/input_slider_widget.dart';

class ExpSettingsScreen extends StatefulWidget {
  const ExpSettingsScreen({super.key});

  @override
  State<ExpSettingsScreen> createState() => _ExpSettingsScreenState();
}

class _ExpSettingsScreenState extends State<ExpSettingsScreen> {
  ExpId _expSelected = .exp1A;
  ExpParamId _expParamSelected = .param1;

  @override
  void initState() {
    setState(() {
      _expSelected = .exp1A;
      _expParamSelected = .param1;
    });
    super.initState();
  }

  void onSelectExp(Set<ExpId> s) {
    setState(() {
      _expSelected = s.first;
      _expParamSelected = .param1;
    });
  }

  void onSelectExpParam(Set<ExpParamId> s) {
    setState(() {
      _expParamSelected = s.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EXP Settings')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SegmentedButton(
              showSelectedIcon: false,
              segments: const <ButtonSegment<ExpId>>[
                ButtonSegment<ExpId>(value: ExpId.exp1A, label: Text('EXP 1A')),
                ButtonSegment<ExpId>(value: ExpId.exp1B, label: Text('EXP 1B')),
                ButtonSegment<ExpId>(value: ExpId.exp2, label: Text('EXP 2')),
              ],
              selected: <ExpId>{_expSelected},
              onSelectionChanged: onSelectExp,
            ),
            const SizedBox(height: 16),
            SegmentedButton(
              showSelectedIcon: false,
              segments: const <ButtonSegment<ExpParamId>>[
                ButtonSegment<ExpParamId>(
                  value: ExpParamId.param1,
                  label: Text('Param 1'),
                ),
                ButtonSegment<ExpParamId>(
                  value: ExpParamId.param2,
                  label: Text('Param 2'),
                ),
                ButtonSegment<ExpParamId>(
                  value: ExpParamId.param3,
                  label: Text('Param 3'),
                ),
              ],
              selected: <ExpParamId>{_expParamSelected},
              onSelectionChanged: onSelectExpParam,
            ),
            const SizedBox(height: 16),
            ExpSettings(expId: _expSelected, expParamId: _expParamSelected),
          ],
        ),
      ),
    );
  }
}

class ExpSettings extends ConsumerWidget {
  const ExpSettings({super.key, required this.expId, required this.expParamId});

  final ExpId expId;
  final ExpParamId expParamId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final effects = ref.watch(patchProvider.select((p) => p.effects));
    final exps = ref.watch(patchProvider.select((p) => p.exps));

    final exp = exps.firstWhere(
      (e) => e.id == expId && e.paramId == expParamId,
    );

    Effect? effect;
    Parameter? param;
    try {
      effect = effects.firstWhere((e) => e.type.code == exp.module.code);
      param = effect.parameters.firstWhere((p) => p.id == exp.moduleParamId);
      print('${effect.type} Num of params ${effect.parameters.length}');
    } on StateError {
      effect = null;
      param = null;
    }

    return Column(
      children: [
        // Text('${exp.id} ${exp.paramId}'),
        InputComboxWidget(
          key: ValueKey('EXP${exp.id}-Param${exp.paramId}'),
          value: exp.module,
          entries: ExpModule.values.asNameMap(),
          label: 'EXP Module ${exp.paramId}',
          onChanged: (m) {
            ref
                .read(patchProvider.notifier)
                .setExp(expId: expId, paramId: expParamId, module: m);
          },
        ),
        if (effect != null && param != null) ...[
          InputComboxWidget(
            key: ValueKey(
              'EXP${exp.id}-Param${exp.paramId}-Module${exp.module}',
            ),
            value: exp.moduleParamId,
            entries: {for (var p in effect.parameters) p.name: p.id},
            label: 'EXP Module Param',
            onChanged: (id) {
              ref
                  .read(patchProvider.notifier)
                  .setExp(
                    expId: expId,
                    paramId: expParamId,
                    module: exp.module,
                    moduleParamId: id,
                  );
            },
          ),
          InputSliderWidget(
            key: ValueKey(
              'EXP${exp.id}-Param${exp.paramId}-Module${exp.module}-Param${exp.moduleParamId}-Min',
            ),
            value: exp.moduleParamMinValue,
            min: param.min,
            max: param.max,
            step: param.step,
            label: 'Min (Lowered)',
            onChanged: (val) {
              ref
                  .read(patchProvider.notifier)
                  .setExp(
                    expId: expId,
                    paramId: expParamId,
                    module: exp.module,
                    moduleParamId: exp.moduleParamId,
                    min: val,
                    max: exp.moduleParamMaxValue,
                  );
            },
          ),
          InputSliderWidget(
            key: ValueKey(
              'EXP${exp.id}-Param${exp.paramId}-Module${exp.module}-Param${exp.moduleParamId}-Max',
            ),
            value: exp.moduleParamMaxValue,
            // TODO: Add a parameter to map value to string (for combox and switch params - show a label instead of encoded integer value)
            min: param.min,
            max: param.max,
            step: param.step,
            label: 'Max (Lifted)',
            onChanged: (val) {
              ref
                  .read(patchProvider.notifier)
                  .setExp(
                    expId: expId,
                    paramId: expParamId,
                    module: exp.module,
                    moduleParamId: exp.moduleParamId,
                    min: exp.moduleParamMinValue,
                    max: val,
                  );
            },
          ),
        ],
      ],
    );
  }
}
