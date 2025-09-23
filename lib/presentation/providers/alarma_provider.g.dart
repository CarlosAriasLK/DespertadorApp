// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarma_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlarmaProvider)
const alarmaProviderProvider = AlarmaProviderProvider._();

final class AlarmaProviderProvider
    extends $NotifierProvider<AlarmaProvider, AlarmaState> {
  const AlarmaProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alarmaProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alarmaProviderHash();

  @$internal
  @override
  AlarmaProvider create() => AlarmaProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlarmaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlarmaState>(value),
    );
  }
}

String _$alarmaProviderHash() => r'67c305395e95449194cd5933cb95cfc4451d406d';

abstract class _$AlarmaProvider extends $Notifier<AlarmaState> {
  AlarmaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AlarmaState, AlarmaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlarmaState, AlarmaState>,
              AlarmaState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
