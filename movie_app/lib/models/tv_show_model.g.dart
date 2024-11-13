// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TvShowModel> _$tvShowModelSerializer = new _$TvShowModelSerializer();

class _$TvShowModelSerializer implements StructuredSerializer<TvShowModel> {
  @override
  final Iterable<Type> types = const [TvShowModel, _$TvShowModel];
  @override
  final String wireName = 'TvShowModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TvShowModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdropPath',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'genre_ids',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'origin_country',
      serializers.serialize(object.originCountry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'originalLanguage',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_name',
      serializers.serialize(object.originalName,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(int)),
      'posterPath',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'first_air_date',
      serializers.serialize(object.firstAirDate,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'voteAverage',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
      'character',
      serializers.serialize(object.character,
          specifiedType: const FullType(String)),
      'credit_id',
      serializers.serialize(object.creditId,
          specifiedType: const FullType(String)),
      'episode_count',
      serializers.serialize(object.episodeCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TvShowModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TvShowModelBuilder();

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
        case 'backdropPath':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'origin_country':
          result.originCountry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'originalLanguage':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_name':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'posterPath':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'voteAverage':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'credit_id':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'episode_count':
          result.episodeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TvShowModel extends TvShowModel {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final BuiltList<int> genreIds;
  @override
  final int id;
  @override
  final BuiltList<String> originCountry;
  @override
  final String originalLanguage;
  @override
  final String originalName;
  @override
  final String overview;
  @override
  final int popularity;
  @override
  final String posterPath;
  @override
  final String firstAirDate;
  @override
  final String name;
  @override
  final double voteAverage;
  @override
  final int voteCount;
  @override
  final String character;
  @override
  final String creditId;
  @override
  final int episodeCount;

  factory _$TvShowModel([void Function(TvShowModelBuilder)? updates]) =>
      (new TvShowModelBuilder()..update(updates))._build();

  _$TvShowModel._(
      {required this.adult,
      required this.backdropPath,
      required this.genreIds,
      required this.id,
      required this.originCountry,
      required this.originalLanguage,
      required this.originalName,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.firstAirDate,
      required this.name,
      required this.voteAverage,
      required this.voteCount,
      required this.character,
      required this.creditId,
      required this.episodeCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'TvShowModel', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdropPath, r'TvShowModel', 'backdropPath');
    BuiltValueNullFieldError.checkNotNull(genreIds, r'TvShowModel', 'genreIds');
    BuiltValueNullFieldError.checkNotNull(id, r'TvShowModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        originCountry, r'TvShowModel', 'originCountry');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, r'TvShowModel', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalName, r'TvShowModel', 'originalName');
    BuiltValueNullFieldError.checkNotNull(overview, r'TvShowModel', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'TvShowModel', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        posterPath, r'TvShowModel', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(
        firstAirDate, r'TvShowModel', 'firstAirDate');
    BuiltValueNullFieldError.checkNotNull(name, r'TvShowModel', 'name');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, r'TvShowModel', 'voteAverage');
    BuiltValueNullFieldError.checkNotNull(
        voteCount, r'TvShowModel', 'voteCount');
    BuiltValueNullFieldError.checkNotNull(
        character, r'TvShowModel', 'character');
    BuiltValueNullFieldError.checkNotNull(creditId, r'TvShowModel', 'creditId');
    BuiltValueNullFieldError.checkNotNull(
        episodeCount, r'TvShowModel', 'episodeCount');
  }

  @override
  TvShowModel rebuild(void Function(TvShowModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TvShowModelBuilder toBuilder() => new TvShowModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TvShowModel &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        genreIds == other.genreIds &&
        id == other.id &&
        originCountry == other.originCountry &&
        originalLanguage == other.originalLanguage &&
        originalName == other.originalName &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        firstAirDate == other.firstAirDate &&
        name == other.name &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        character == other.character &&
        creditId == other.creditId &&
        episodeCount == other.episodeCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdropPath.hashCode);
    _$hash = $jc(_$hash, genreIds.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originCountry.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalName.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, firstAirDate.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, voteAverage.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, creditId.hashCode);
    _$hash = $jc(_$hash, episodeCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TvShowModel')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('genreIds', genreIds)
          ..add('id', id)
          ..add('originCountry', originCountry)
          ..add('originalLanguage', originalLanguage)
          ..add('originalName', originalName)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('firstAirDate', firstAirDate)
          ..add('name', name)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('character', character)
          ..add('creditId', creditId)
          ..add('episodeCount', episodeCount))
        .toString();
  }
}

class TvShowModelBuilder implements Builder<TvShowModel, TvShowModelBuilder> {
  _$TvShowModel? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  ListBuilder<int>? _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int>? genreIds) => _$this._genreIds = genreIds;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<String>? _originCountry;
  ListBuilder<String> get originCountry =>
      _$this._originCountry ??= new ListBuilder<String>();
  set originCountry(ListBuilder<String>? originCountry) =>
      _$this._originCountry = originCountry;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _originalName;
  String? get originalName => _$this._originalName;
  set originalName(String? originalName) => _$this._originalName = originalName;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _firstAirDate;
  String? get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String? firstAirDate) => _$this._firstAirDate = firstAirDate;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _voteAverage;
  double? get voteAverage => _$this._voteAverage;
  set voteAverage(double? voteAverage) => _$this._voteAverage = voteAverage;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _creditId;
  String? get creditId => _$this._creditId;
  set creditId(String? creditId) => _$this._creditId = creditId;

  int? _episodeCount;
  int? get episodeCount => _$this._episodeCount;
  set episodeCount(int? episodeCount) => _$this._episodeCount = episodeCount;

  TvShowModelBuilder();

  TvShowModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdropPath = $v.backdropPath;
      _genreIds = $v.genreIds.toBuilder();
      _id = $v.id;
      _originCountry = $v.originCountry.toBuilder();
      _originalLanguage = $v.originalLanguage;
      _originalName = $v.originalName;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _firstAirDate = $v.firstAirDate;
      _name = $v.name;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _character = $v.character;
      _creditId = $v.creditId;
      _episodeCount = $v.episodeCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TvShowModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TvShowModel;
  }

  @override
  void update(void Function(TvShowModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TvShowModel build() => _build();

  _$TvShowModel _build() {
    _$TvShowModel _$result;
    try {
      _$result = _$v ??
          new _$TvShowModel._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'TvShowModel', 'adult'),
              backdropPath: BuiltValueNullFieldError.checkNotNull(
                  backdropPath, r'TvShowModel', 'backdropPath'),
              genreIds: genreIds.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'TvShowModel', 'id'),
              originCountry: originCountry.build(),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(
                  originalLanguage, r'TvShowModel', 'originalLanguage'),
              originalName: BuiltValueNullFieldError.checkNotNull(
                  originalName, r'TvShowModel', 'originalName'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'TvShowModel', 'overview'),
              popularity: BuiltValueNullFieldError.checkNotNull(
                  popularity, r'TvShowModel', 'popularity'),
              posterPath: BuiltValueNullFieldError.checkNotNull(
                  posterPath, r'TvShowModel', 'posterPath'),
              firstAirDate:
                  BuiltValueNullFieldError.checkNotNull(firstAirDate, r'TvShowModel', 'firstAirDate'),
              name: BuiltValueNullFieldError.checkNotNull(name, r'TvShowModel', 'name'),
              voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, r'TvShowModel', 'voteAverage'),
              voteCount: BuiltValueNullFieldError.checkNotNull(voteCount, r'TvShowModel', 'voteCount'),
              character: BuiltValueNullFieldError.checkNotNull(character, r'TvShowModel', 'character'),
              creditId: BuiltValueNullFieldError.checkNotNull(creditId, r'TvShowModel', 'creditId'),
              episodeCount: BuiltValueNullFieldError.checkNotNull(episodeCount, r'TvShowModel', 'episodeCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreIds';
        genreIds.build();

        _$failedField = 'originCountry';
        originCountry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TvShowModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
