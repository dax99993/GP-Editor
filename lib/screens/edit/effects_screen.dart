import 'package:flutter/material.dart';
import 'package:gp_editor/data/change_effect.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/models/effect/effect_info.dart';
import 'package:gp_editor/widgets/effect/effect_widget.dart';

class EffectsScreen extends StatefulWidget {
  EffectsScreen({super.key});

  final _effects = changeEffect[EffectType.amp]!;

  @override
  State<EffectsScreen> createState() => _EffectsScreenState();
}

class _EffectsScreenState extends State<EffectsScreen> {
  List<EffectInfo> _filtered_effects = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _filtered_effects = widget._effects;
    });
  }

  void filterEffects(String filter) {
    setState(() {
      _filtered_effects = widget._effects
          .where((e) => e.name.contains(filter))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Select Effect'),
            pinned: true,
            surfaceTintColor: Colors.transparent,
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
            padding: const EdgeInsets.only(bottom: 50.0),
            sliver: SliverList.builder(
              // itemCount: widget._effects.length,
              itemCount: _filtered_effects.length,
              itemBuilder: (context, index) {
                final effect = _filtered_effects[index];
                return EffectWidget(
                  name: effect.name,
                  shortDescription: effect.description,
                  onTap: () {
                    print('Change Effect to ${effect.name}');
                  },
                  onTapInfo: () {
                    print('Show Effect Info of ${effect.name}');
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
