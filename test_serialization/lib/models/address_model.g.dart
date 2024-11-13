// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addressModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressModel> _$addressModelSerializer =
    new _$AddressModelSerializer();

class _$AddressModelSerializer implements StructuredSerializer<AddressModel> {
  @override
  final Iterable<Type> types = const [AddressModel, _$AddressModel];
  @override
  final String wireName = 'AddressModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'Zipcode',
      serializers.serialize(object.Zipcode, specifiedType: const FullType(int)),
      'is',
      serializers.serialize(object.isRetired,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  AddressModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Zipcode':
          result.Zipcode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'is':
          result.isRetired = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressModel extends AddressModel {
  @override
  final String street;
  @override
  final String city;
  @override
  final int Zipcode;
  @override
  final bool isRetired;

  factory _$AddressModel([void Function(AddressModelBuilder)? updates]) =>
      (new AddressModelBuilder()..update(updates))._build();

  _$AddressModel._(
      {required this.street,
      required this.city,
      required this.Zipcode,
      required this.isRetired})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(street, r'AddressModel', 'street');
    BuiltValueNullFieldError.checkNotNull(city, r'AddressModel', 'city');
    BuiltValueNullFieldError.checkNotNull(Zipcode, r'AddressModel', 'Zipcode');
    BuiltValueNullFieldError.checkNotNull(
        isRetired, r'AddressModel', 'isRetired');
  }

  @override
  AddressModel rebuild(void Function(AddressModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressModelBuilder toBuilder() => new AddressModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressModel &&
        street == other.street &&
        city == other.city &&
        Zipcode == other.Zipcode &&
        isRetired == other.isRetired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, Zipcode.hashCode);
    _$hash = $jc(_$hash, isRetired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressModel')
          ..add('street', street)
          ..add('city', city)
          ..add('Zipcode', Zipcode)
          ..add('isRetired', isRetired))
        .toString();
  }
}

class AddressModelBuilder
    implements Builder<AddressModel, AddressModelBuilder> {
  _$AddressModel? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  int? _Zipcode;
  int? get Zipcode => _$this._Zipcode;
  set Zipcode(int? Zipcode) => _$this._Zipcode = Zipcode;

  bool? _isRetired;
  bool? get isRetired => _$this._isRetired;
  set isRetired(bool? isRetired) => _$this._isRetired = isRetired;

  AddressModelBuilder();

  AddressModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _city = $v.city;
      _Zipcode = $v.Zipcode;
      _isRetired = $v.isRetired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressModel;
  }

  @override
  void update(void Function(AddressModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressModel build() => _build();

  _$AddressModel _build() {
    final _$result = _$v ??
        new _$AddressModel._(
            street: BuiltValueNullFieldError.checkNotNull(
                street, r'AddressModel', 'street'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, r'AddressModel', 'city'),
            Zipcode: BuiltValueNullFieldError.checkNotNull(
                Zipcode, r'AddressModel', 'Zipcode'),
            isRetired: BuiltValueNullFieldError.checkNotNull(
                isRetired, r'AddressModel', 'isRetired'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
