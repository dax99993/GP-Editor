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
    extends $NotifierProvider<PatchNotifier, dynamic> {
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
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$patchNotifierHash() => r'cca95ce767d95d73a1999a96b28ecd5a7dea13dc';

abstract class _$PatchNotifier extends $Notifier<dynamic> {
  dynamic build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<dynamic, dynamic>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<dynamic, dynamic>,
              dynamic,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
