// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companyModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyModel> _$companyModelSerializer =
    new _$CompanyModelSerializer();

class _$CompanyModelSerializer implements StructuredSerializer<CompanyModel> {
  @override
  final Iterable<Type> types = const [CompanyModel, _$CompanyModel];
  @override
  final String wireName = 'CompanyModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompanyModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Name',
      serializers.serialize(object.Name, specifiedType: const FullType(String)),
      'CatchPhrase',
      serializers.serialize(object.CatchPhrase,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CompanyModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.Name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'CatchPhrase':
          result.CatchPhrase = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CompanyModel extends CompanyModel {
  @override
  final String Name;
  @override
  final String CatchPhrase;

  factory _$CompanyModel([void Function(CompanyModelBuilder)? updates]) =>
      (new CompanyModelBuilder()..update(updates))._build();

  _$CompanyModel._({required this.Name, required this.CatchPhrase})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(Name, r'CompanyModel', 'Name');
    BuiltValueNullFieldError.checkNotNull(
        CatchPhrase, r'CompanyModel', 'CatchPhrase');
  }

  @override
  CompanyModel rebuild(void Function(CompanyModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyModelBuilder toBuilder() => new CompanyModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyModel &&
        Name == other.Name &&
        CatchPhrase == other.CatchPhrase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Name.hashCode);
    _$hash = $jc(_$hash, CatchPhrase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyModel')
          ..add('Name', Name)
          ..add('CatchPhrase', CatchPhrase))
        .toString();
  }
}

class CompanyModelBuilder
    implements Builder<CompanyModel, CompanyModelBuilder> {
  _$CompanyModel? _$v;

  String? _Name;
  String? get Name => _$this._Name;
  set Name(String? Name) => _$this._Name = Name;

  String? _CatchPhrase;
  String? get CatchPhrase => _$this._CatchPhrase;
  set CatchPhrase(String? CatchPhrase) => _$this._CatchPhrase = CatchPhrase;

  CompanyModelBuilder();

  CompanyModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Name = $v.Name;
      _CatchPhrase = $v.CatchPhrase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyModel;
  }

  @override
  void update(void Function(CompanyModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyModel build() => _build();

  _$CompanyModel _build() {
    final _$result = _$v ??
        new _$CompanyModel._(
            Name: BuiltValueNullFieldError.checkNotNull(
                Name, r'CompanyModel', 'Name'),
            CatchPhrase: BuiltValueNullFieldError.checkNotNull(
                CatchPhrase, r'CompanyModel', 'CatchPhrase'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
