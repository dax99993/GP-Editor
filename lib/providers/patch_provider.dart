import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/data/test_patch.dart';
import 'package:gp_editor/models/patch/patch.dart';

final currentPatch = Provider<Patch>((ref) {
  return testPatch;
});
