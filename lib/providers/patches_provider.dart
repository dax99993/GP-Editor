import 'package:gp_editor/data/test_patch.dart';
import 'package:gp_editor/models/patch/patch.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patches_provider.g.dart';

@riverpod
class PatchesNotifier extends _$PatchesNotifier {
  @override
  List<Patch> build() {
    // return [];
    return [
      testPatch.copyWith(name: "Some Patch"),
      testPatch2.copyWith(name: "Another Patch"),
    ];
  }

  void addPatch(Patch patch) {
    final patches = [...state];
    patches.add(patch);
    state = patches;
  }

  void replacePatch(Patch patch) {
    final patches = [...state];
    final index = patches.indexWhere((p) => p.index == patch.index);
    if (index != -1) {
      patches[index] = patch;
      state = patches;
    }
  }
}
