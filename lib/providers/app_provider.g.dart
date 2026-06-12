// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppNotifier)
final appProvider = AppNotifierProvider._();

final class AppNotifierProvider
    extends $NotifierProvider<AppNotifier, dynamic> {
  AppNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appNotifierHash();

  @$internal
  @override
  AppNotifier create() => AppNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$appNotifierHash() => r'b8f329bfd581a812a373b85f45a92ba8710e3fdd';

abstract class _$AppNotifier extends $Notifier<dynamic> {
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
