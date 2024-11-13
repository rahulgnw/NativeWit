// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieModel> _$movieModelSerializer = new _$MovieModelSerializer();

class _$MovieModelSerializer implements StructuredSerializer<MovieModel> {
  @override
  final Iterable<Type> types = const [MovieModel, _$MovieModel];
  @override
  final String wireName = 'MovieModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'genreId',
      serializers.serialize(object.genreId, specifiedType: const FullType(int)),
      'genre_ids',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.originalTitle,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(int)),
      'poster_path',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'voteAverage',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverageValue,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MovieModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieModelBuilder();

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
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genreId':
          result.genreId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
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
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'voteAverage':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vote_average':
          result.voteAverageValue = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieModel extends MovieModel {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final int genreId;
  @override
  final BuiltList<int> genreIds;
  @override
  final int id;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final int popularity;
  @override
  final String posterPath;
  @override
  final String releaseDate;
  @override
  final String title;
  @override
  final bool video;
  @override
  final String voteAverage;
  @override
  final double voteAverageValue;
  @override
  final int voteCount;

  factory _$MovieModel([void Function(MovieModelBuilder)? updates]) =>
      (new MovieModelBuilder()..update(updates))._build();

  _$MovieModel._(
      {required this.adult,
      required this.backdropPath,
      required this.genreId,
      required this.genreIds,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteAverageValue,
      required this.voteCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'MovieModel', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdropPath, r'MovieModel', 'backdropPath');
    BuiltValueNullFieldError.checkNotNull(genreId, r'MovieModel', 'genreId');
    BuiltValueNullFieldError.checkNotNull(genreIds, r'MovieModel', 'genreIds');
    BuiltValueNullFieldError.checkNotNull(id, r'MovieModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, r'MovieModel', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalTitle, r'MovieModel', 'originalTitle');
    BuiltValueNullFieldError.checkNotNull(overview, r'MovieModel', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'MovieModel', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        posterPath, r'MovieModel', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, r'MovieModel', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(title, r'MovieModel', 'title');
    BuiltValueNullFieldError.checkNotNull(video, r'MovieModel', 'video');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, r'MovieModel', 'voteAverage');
    BuiltValueNullFieldError.checkNotNull(
        voteAverageValue, r'MovieModel', 'voteAverageValue');
    BuiltValueNullFieldError.checkNotNull(
        voteCount, r'MovieModel', 'voteCount');
  }

  @override
  MovieModel rebuild(void Function(MovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieModelBuilder toBuilder() => new MovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieModel &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        genreId == other.genreId &&
        genreIds == other.genreIds &&
        id == other.id &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        releaseDate == other.releaseDate &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteAverageValue == other.voteAverageValue &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdropPath.hashCode);
    _$hash = $jc(_$hash, genreId.hashCode);
    _$hash = $jc(_$hash, genreIds.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalTitle.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, voteAverage.hashCode);
    _$hash = $jc(_$hash, voteAverageValue.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieModel')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('genreId', genreId)
          ..add('genreIds', genreIds)
          ..add('id', id)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('releaseDate', releaseDate)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteAverageValue', voteAverageValue)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class MovieModelBuilder implements Builder<MovieModel, MovieModelBuilder> {
  _$MovieModel? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  int? _genreId;
  int? get genreId => _$this._genreId;
  set genreId(int? genreId) => _$this._genreId = genreId;

  ListBuilder<int>? _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int>? genreIds) => _$this._genreIds = genreIds;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  String? _voteAverage;
  String? get voteAverage => _$this._voteAverage;
  set voteAverage(String? voteAverage) => _$this._voteAverage = voteAverage;

  double? _voteAverageValue;
  double? get voteAverageValue => _$this._voteAverageValue;
  set voteAverageValue(double? voteAverageValue) =>
      _$this._voteAverageValue = voteAverageValue;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  MovieModelBuilder();

  MovieModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdropPath = $v.backdropPath;
      _genreId = $v.genreId;
      _genreIds = $v.genreIds.toBuilder();
      _id = $v.id;
      _originalLanguage = $v.originalLanguage;
      _originalTitle = $v.originalTitle;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _releaseDate = $v.releaseDate;
      _title = $v.title;
      _video = $v.video;
      _voteAverage = $v.voteAverage;
      _voteAverageValue = $v.voteAverageValue;
      _voteCount = $v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieModel;
  }

  @override
  void update(void Function(MovieModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieModel build() => _build();

  _$MovieModel _build() {
    _$MovieModel _$result;
    try {
      _$result = _$v ??
          new _$MovieModel._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'MovieModel', 'adult'),
              backdropPath: BuiltValueNullFieldError.checkNotNull(
                  backdropPath, r'MovieModel', 'backdropPath'),
              genreId: BuiltValueNullFieldError.checkNotNull(
                  genreId, r'MovieModel', 'genreId'),
              genreIds: genreIds.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'MovieModel', 'id'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(
                  originalLanguage, r'MovieModel', 'originalLanguage'),
              originalTitle: BuiltValueNullFieldError.checkNotNull(
                  originalTitle, r'MovieModel', 'originalTitle'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'MovieModel', 'overview'),
              popularity: BuiltValueNullFieldError.checkNotNull(
                  popularity, r'MovieModel', 'popularity'),
              posterPath: BuiltValueNullFieldError.checkNotNull(
                  posterPath, r'MovieModel', 'posterPath'),
              releaseDate: BuiltValueNullFieldError.checkNotNull(releaseDate, r'MovieModel', 'releaseDate'),
              title: BuiltValueNullFieldError.checkNotNull(title, r'MovieModel', 'title'),
              video: BuiltValueNullFieldError.checkNotNull(video, r'MovieModel', 'video'),
              voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, r'MovieModel', 'voteAverage'),
              voteAverageValue: BuiltValueNullFieldError.checkNotNull(voteAverageValue, r'MovieModel', 'voteAverageValue'),
              voteCount: BuiltValueNullFieldError.checkNotNull(voteCount, r'MovieModel', 'voteCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreIds';
        genreIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MovieModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
