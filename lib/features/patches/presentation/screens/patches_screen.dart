import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/features/patches/presentation/providers/patches_provider.dart';
import 'package:gp_editor/features/patches/presentation/widgets/patch_widget.dart';

class PatchesScreen extends ConsumerStatefulWidget {
  const PatchesScreen({super.key});

  @override
  ConsumerState<PatchesScreen> createState() => _PatchesScreenState();
}

class _PatchesScreenState extends ConsumerState<PatchesScreen> {
  @override
  Widget build(BuildContext context) {
    final patches = ref.watch(patchesProvider);

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
            padding: const EdgeInsetsGeometry.fromLTRB(16, 0, 16, 25),
            sliver: SliverList.builder(
              itemCount: patches.length,
              // itemCount: _filtered_patches.length,
              itemBuilder: (context, index) {
                // final effect = _filtered_effects[index];
                final patch = patches[index];
                return PatchWidget(
                  name: patch.name,
                  // shortDescription: patch.description,
                  shortDescription: 'Short description of the patch',
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
