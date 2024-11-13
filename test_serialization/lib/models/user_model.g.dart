// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserModel> _$userModelSerializer = new _$UserModelSerializer();

class _$UserModelSerializer implements StructuredSerializer<UserModel> {
  @override
  final Iterable<Type> types = const [UserModel, _$UserModel];
  @override
  final String wireName = 'UserModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressModel)),
      'company',
      serializers.serialize(object.company,
          specifiedType: const FullType(CompanyModel)),
    ];

    return result;
  }

  @override
  UserModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressModel))! as AddressModel);
          break;
        case 'company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(CompanyModel))! as CompanyModel);
          break;
      }
    }

    return result.build();
  }
}

class _$UserModel extends UserModel {
  @override
  final String name;
  @override
  final AddressModel address;
  @override
  final CompanyModel company;

  factory _$UserModel([void Function(UserModelBuilder)? updates]) =>
      (new UserModelBuilder()..update(updates))._build();

  _$UserModel._(
      {required this.name, required this.address, required this.company})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UserModel', 'name');
    BuiltValueNullFieldError.checkNotNull(address, r'UserModel', 'address');
    BuiltValueNullFieldError.checkNotNull(company, r'UserModel', 'company');
  }

  @override
  UserModel rebuild(void Function(UserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserModelBuilder toBuilder() => new UserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserModel &&
        name == other.name &&
        address == other.address &&
        company == other.company;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserModel')
          ..add('name', name)
          ..add('address', address)
          ..add('company', company))
        .toString();
  }

  @override
  // TODO: implement username
  String get username => throw UnimplementedError();
}

class UserModelBuilder implements Builder<UserModel, UserModelBuilder> {
  _$UserModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AddressModelBuilder? _address;
  AddressModelBuilder get address =>
      _$this._address ??= new AddressModelBuilder();
  set address(AddressModelBuilder? address) => _$this._address = address;

  CompanyModelBuilder? _company;
  CompanyModelBuilder get company =>
      _$this._company ??= new CompanyModelBuilder();
  set company(CompanyModelBuilder? company) => _$this._company = company;

  UserModelBuilder();

  UserModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _address = $v.address.toBuilder();
      _company = $v.company.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserModel;
  }

  @override
  void update(void Function(UserModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserModel build() => _build();

  _$UserModel _build() {
    _$UserModel _$result;
    try {
      _$result = _$v ??
          new _$UserModel._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'UserModel', 'name'),
              address: address.build(),
              company: company.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
        _$failedField = 'company';
        company.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
