// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthUser> _$authUserSerializer = new _$AuthUserSerializer();

class _$AuthUserSerializer implements StructuredSerializer<AuthUser> {
  @override
  final Iterable<Type> types = const [AuthUser, _$AuthUser];
  @override
  final String wireName = 'AuthUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'phoneNo',
      serializers.serialize(object.phoneNo,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuthUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNo':
          result.phoneNo = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profile':
          result.profile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthUser extends AuthUser {
  @override
  final String? user;
  @override
  final String id;
  @override
  final String phoneNo;
  @override
  final String? profile;

  factory _$AuthUser([void Function(AuthUserBuilder)? updates]) =>
      (new AuthUserBuilder()..update(updates))._build();

  _$AuthUser._(
      {this.user, required this.id, required this.phoneNo, this.profile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AuthUser', 'id');
    BuiltValueNullFieldError.checkNotNull(phoneNo, r'AuthUser', 'phoneNo');
  }

  @override
  AuthUser rebuild(void Function(AuthUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthUserBuilder toBuilder() => new AuthUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthUser &&
        user == other.user &&
        id == other.id &&
        phoneNo == other.phoneNo &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, phoneNo.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthUser')
          ..add('user', user)
          ..add('id', id)
          ..add('phoneNo', phoneNo)
          ..add('profile', profile))
        .toString();
  }
}

class AuthUserBuilder implements Builder<AuthUser, AuthUserBuilder> {
  _$AuthUser? _$v;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _phoneNo;
  String? get phoneNo => _$this._phoneNo;
  set phoneNo(String? phoneNo) => _$this._phoneNo = phoneNo;

  String? _profile;
  String? get profile => _$this._profile;
  set profile(String? profile) => _$this._profile = profile;

  AuthUserBuilder();

  AuthUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _id = $v.id;
      _phoneNo = $v.phoneNo;
      _profile = $v.profile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthUser;
  }

  @override
  void update(void Function(AuthUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthUser build() => _build();

  _$AuthUser _build() {
    final _$result = _$v ??
        new _$AuthUser._(
            user: user,
            id: BuiltValueNullFieldError.checkNotNull(id, r'AuthUser', 'id'),
            phoneNo: BuiltValueNullFieldError.checkNotNull(
                phoneNo, r'AuthUser', 'phoneNo'),
            profile: profile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
