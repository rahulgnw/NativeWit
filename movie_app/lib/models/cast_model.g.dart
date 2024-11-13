// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CastModel> _$castModelSerializer = new _$CastModelSerializer();

class _$CastModelSerializer implements StructuredSerializer<CastModel> {
  @override
  final Iterable<Type> types = const [CastModel, _$CastModel];
  @override
  final String wireName = 'CastModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CastModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'knownForDepartment',
      serializers.serialize(object.knownForDepartment,
          specifiedType: const FullType(String)),
      'known_for_department',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'originalName',
      serializers.serialize(object.originalName,
          specifiedType: const FullType(String)),
      'orginal_name',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(String)),
      'profilePath',
      serializers.serialize(object.profilePath,
          specifiedType: const FullType(String)),
      'profile_path',
      serializers.serialize(object.castId, specifiedType: const FullType(int)),
      'cast_id',
      serializers.serialize(object.character,
          specifiedType: const FullType(String)),
      'creditId',
      serializers.serialize(object.creditId,
          specifiedType: const FullType(String)),
      'credit_id',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CastModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'knownForDepartment':
          result.knownForDepartment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'known_for_department':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'originalName':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'orginal_name':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profilePath':
          result.profilePath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profile_path':
          result.castId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'cast_id':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'creditId':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'credit_id':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CastModel extends CastModel {
  @override
  final bool adult;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String knownForDepartment;
  @override
  final String name;
  @override
  final String originalName;
  @override
  final String popularity;
  @override
  final String profilePath;
  @override
  final int castId;
  @override
  final String character;
  @override
  final String creditId;
  @override
  final int order;

  factory _$CastModel([void Function(CastModelBuilder)? updates]) =>
      (new CastModelBuilder()..update(updates))._build();

  _$CastModel._(
      {required this.adult,
      required this.gender,
      required this.id,
      required this.knownForDepartment,
      required this.name,
      required this.originalName,
      required this.popularity,
      required this.profilePath,
      required this.castId,
      required this.character,
      required this.creditId,
      required this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'CastModel', 'adult');
    BuiltValueNullFieldError.checkNotNull(gender, r'CastModel', 'gender');
    BuiltValueNullFieldError.checkNotNull(id, r'CastModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        knownForDepartment, r'CastModel', 'knownForDepartment');
    BuiltValueNullFieldError.checkNotNull(name, r'CastModel', 'name');
    BuiltValueNullFieldError.checkNotNull(
        originalName, r'CastModel', 'originalName');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'CastModel', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        profilePath, r'CastModel', 'profilePath');
    BuiltValueNullFieldError.checkNotNull(castId, r'CastModel', 'castId');
    BuiltValueNullFieldError.checkNotNull(character, r'CastModel', 'character');
    BuiltValueNullFieldError.checkNotNull(creditId, r'CastModel', 'creditId');
    BuiltValueNullFieldError.checkNotNull(order, r'CastModel', 'order');
  }

  @override
  CastModel rebuild(void Function(CastModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastModelBuilder toBuilder() => new CastModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CastModel &&
        adult == other.adult &&
        gender == other.gender &&
        id == other.id &&
        knownForDepartment == other.knownForDepartment &&
        name == other.name &&
        originalName == other.originalName &&
        popularity == other.popularity &&
        profilePath == other.profilePath &&
        castId == other.castId &&
        character == other.character &&
        creditId == other.creditId &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, knownForDepartment.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, originalName.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, profilePath.hashCode);
    _$hash = $jc(_$hash, castId.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, creditId.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CastModel')
          ..add('adult', adult)
          ..add('gender', gender)
          ..add('id', id)
          ..add('knownForDepartment', knownForDepartment)
          ..add('name', name)
          ..add('originalName', originalName)
          ..add('popularity', popularity)
          ..add('profilePath', profilePath)
          ..add('castId', castId)
          ..add('character', character)
          ..add('creditId', creditId)
          ..add('order', order))
        .toString();
  }
}

class CastModelBuilder implements Builder<CastModel, CastModelBuilder> {
  _$CastModel? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _knownForDepartment;
  String? get knownForDepartment => _$this._knownForDepartment;
  set knownForDepartment(String? knownForDepartment) =>
      _$this._knownForDepartment = knownForDepartment;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _originalName;
  String? get originalName => _$this._originalName;
  set originalName(String? originalName) => _$this._originalName = originalName;

  String? _popularity;
  String? get popularity => _$this._popularity;
  set popularity(String? popularity) => _$this._popularity = popularity;

  String? _profilePath;
  String? get profilePath => _$this._profilePath;
  set profilePath(String? profilePath) => _$this._profilePath = profilePath;

  int? _castId;
  int? get castId => _$this._castId;
  set castId(int? castId) => _$this._castId = castId;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _creditId;
  String? get creditId => _$this._creditId;
  set creditId(String? creditId) => _$this._creditId = creditId;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  CastModelBuilder();

  CastModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _gender = $v.gender;
      _id = $v.id;
      _knownForDepartment = $v.knownForDepartment;
      _name = $v.name;
      _originalName = $v.originalName;
      _popularity = $v.popularity;
      _profilePath = $v.profilePath;
      _castId = $v.castId;
      _character = $v.character;
      _creditId = $v.creditId;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CastModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CastModel;
  }

  @override
  void update(void Function(CastModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CastModel build() => _build();

  _$CastModel _build() {
    final _$result = _$v ??
        new _$CastModel._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, r'CastModel', 'adult'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'CastModel', 'gender'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'CastModel', 'id'),
            knownForDepartment: BuiltValueNullFieldError.checkNotNull(
                knownForDepartment, r'CastModel', 'knownForDepartment'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CastModel', 'name'),
            originalName: BuiltValueNullFieldError.checkNotNull(
                originalName, r'CastModel', 'originalName'),
            popularity: BuiltValueNullFieldError.checkNotNull(
                popularity, r'CastModel', 'popularity'),
            profilePath: BuiltValueNullFieldError.checkNotNull(
                profilePath, r'CastModel', 'profilePath'),
            castId: BuiltValueNullFieldError.checkNotNull(
                castId, r'CastModel', 'castId'),
            character: BuiltValueNullFieldError.checkNotNull(
                character, r'CastModel', 'character'),
            creditId: BuiltValueNullFieldError.checkNotNull(
                creditId, r'CastModel', 'creditId'),
            order: BuiltValueNullFieldError.checkNotNull(order, r'CastModel', 'order'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
