import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/patch/patch_widget.dart';

class PatchesScreen extends StatefulWidget {
  const PatchesScreen({super.key});

  @override
  State<PatchesScreen> createState() => _PatchesScreenState();
}

class _PatchesScreenState extends State<PatchesScreen> {
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
                  // onChanged: filterEffects,
                  hintText: 'Search Patch...',
                  constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 50.0),
            sliver: SliverList.builder(
              itemCount: 20,
              // itemCount: _filtered_effects.length,
              itemBuilder: (context, index) {
                // final effect = _filtered_effects[index];
                return PatchWidget(
                  name: 'Patch $index',
                  shortDescription: 'description $index',
                  onTap: () {
                    print('Change Effect to ');
                  },
                  onTapInfo: () {
                    print('Show Effect Info of ');
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
