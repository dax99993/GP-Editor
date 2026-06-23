import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/data/change_effect.dart';
import 'package:gp_editor/data/default_effects.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/effect/effect_info.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/theme.dart';
import 'package:gp_editor/widgets/effect/effect_widget.dart';

class EffectsScreen extends ConsumerStatefulWidget {
  EffectsScreen({super.key});

  final _effects = changeEffect;

  @override
  ConsumerState<EffectsScreen> createState() => _EffectsScreenState();
}

class _EffectsScreenState extends ConsumerState<EffectsScreen> {
  List<EffectInfo> _filteredEffects = [];

  @override
  void initState() {
    final EffectType selectedEffect = ref.read(
      appProvider.select((app) => app.selectedEffect),
    );
    setState(() {
      _filteredEffects = widget._effects[selectedEffect]!;
    });
    super.initState();
  }

  void filterEffects(String filter) {
    final selectedEffect = ref.read(
      appProvider.select((app) => app.selectedEffect),
    );

    setState(() {
      _filteredEffects = widget._effects[selectedEffect]!
          .where((e) => e.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final EffectType selectedEffect = ref.read(
      appProvider.select((app) => app.selectedEffect),
    );
    final Effect eff = ref
        .watch(patchProvider.select((p) => p.effects))
        .firstWhere((e) => e.type == selectedEffect);

    print('Selected Effect (${selectedEffect.name}): ${eff.name}');

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Select Effect'),
            pinned: true,
            backgroundColor: themeColors.appBarBackground,
            scrolledUnderElevation: 0.0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: SearchBar(
                  leading: Icon(Icons.search),
                  onChanged: filterEffects,
                  hintText: 'Search effect ...',
                  constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsetsGeometry.fromLTRB(16, 0, 16, 25),
            sliver: SliverList.builder(
              itemCount: _filteredEffects.length,
              itemBuilder: (context, index) {
                final effectInfo = _filteredEffects[index];
                final effect = defaultEffects[selectedEffect]!.firstWhere(
                  (e) => e.id == effectInfo.id,
                );
                return EffectWidget(
                  name: effectInfo.name,
                  isSelected: effectInfo.id == eff.id,
                  shortDescription: effectInfo.description,
                  onTap: () {
                    ref.read(patchProvider.notifier).setEffect(effect);
                    // TODO: Should I pop this screen after selecting an effect?
                  },
                  onTapInfo: () {
                    print('Show Effect Info of ${effectInfo.name}');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
