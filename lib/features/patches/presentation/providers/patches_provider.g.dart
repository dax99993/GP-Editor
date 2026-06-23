// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patches_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PatchesNotifier)
final patchesProvider = PatchesNotifierProvider._();

final class PatchesNotifierProvider
    extends $NotifierProvider<PatchesNotifier, List<Patch>> {
  PatchesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'patchesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$patchesNotifierHash();

  @$internal
  @override
  PatchesNotifier create() => PatchesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Patch> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Patch>>(value),
    );
  }
}

String _$patchesNotifierHash() => r'821e9a06d533c5a84c19c1310961155b4fbefa69';

abstract class _$PatchesNotifier extends $Notifier<List<Patch>> {
  List<Patch> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<Patch>, List<Patch>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Patch>, List<Patch>>,
              List<Patch>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
