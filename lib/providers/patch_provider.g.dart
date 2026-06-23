// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PatchNotifier)
final patchProvider = PatchNotifierProvider._();

final class PatchNotifierProvider
    extends $NotifierProvider<PatchNotifier, Patch> {
  PatchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'patchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$patchNotifierHash();

  @$internal
  @override
  PatchNotifier create() => PatchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Patch value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Patch>(value),
    );
  }
}

String _$patchNotifierHash() => r'ffbfc13b102c250d32da639b888c816b9ee42ed5';

abstract class _$PatchNotifier extends $Notifier<Patch> {
  Patch build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Patch, Patch>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Patch, Patch>,
              Patch,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
