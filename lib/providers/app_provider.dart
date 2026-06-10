import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/app.dart';
import 'package:gp_editor/models/effect/effect.dart';

final appProvider = NotifierProvider<AppStateNotifier, AppState>(
  AppStateNotifier.new,
);

class AppStateNotifier extends Notifier<AppState> {
  @override
  build() {
    return AppState(currentSelectedEffect: EffectType.pre);
  }
}
