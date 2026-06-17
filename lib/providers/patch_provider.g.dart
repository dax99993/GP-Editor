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

String _$patchNotifierHash() => r'029ed8516112953986c64e89aa4e5b00c3f63f1f';

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

@ProviderFor(EffectNotifier)
final effectProvider = EffectNotifierProvider._();

final class EffectNotifierProvider
    extends $NotifierProvider<EffectNotifier, Patch> {
  EffectNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'effectProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$effectNotifierHash();

  @$internal
  @override
  EffectNotifier create() => EffectNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Patch value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Patch>(value),
    );
  }
}

String _$effectNotifierHash() => r'54d5462112b8dbcc30aba32d3033ef23328ed092';

abstract class _$EffectNotifier extends $Notifier<Patch> {
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
