// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$characterHash() => r'5f72f6869c0b13ade7f17a7449ed4f81ff40471a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [character].
@ProviderFor(character)
const characterProvider = CharacterFamily();

/// See also [character].
class CharacterFamily extends Family<AsyncValue<Character>> {
  /// See also [character].
  const CharacterFamily();

  /// See also [character].
  CharacterProvider call({required int id}) {
    return CharacterProvider(id: id);
  }

  @override
  CharacterProvider getProviderOverride(covariant CharacterProvider provider) {
    return call(id: provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'characterProvider';
}

/// See also [character].
class CharacterProvider extends AutoDisposeFutureProvider<Character> {
  /// See also [character].
  CharacterProvider({required int id})
    : this._internal(
        (ref) => character(ref as CharacterRef, id: id),
        from: characterProvider,
        name: r'characterProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$characterHash,
        dependencies: CharacterFamily._dependencies,
        allTransitiveDependencies: CharacterFamily._allTransitiveDependencies,
        id: id,
      );

  CharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Character> Function(CharacterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CharacterProvider._internal(
        (ref) => create(ref as CharacterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Character> createElement() {
    return _CharacterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CharacterProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CharacterRef on AutoDisposeFutureProviderRef<Character> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CharacterProviderElement
    extends AutoDisposeFutureProviderElement<Character>
    with CharacterRef {
  _CharacterProviderElement(super.provider);

  @override
  int get id => (origin as CharacterProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
