// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'movieReview',
      serializers.serialize(object.movieReview,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Review)])
          ])),
      'tvReview',
      serializers.serialize(object.tvReview,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Review)])
          ])),
    ];
    Object? value;
    value = object.popularMovies;
    if (value != null) {
      result
        ..add('popularMovies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.topRatedMovie;
    if (value != null) {
      result
        ..add('topRatedMovie')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.upcomingMovie;
    if (value != null) {
      result
        ..add('upcomingMovie')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.castForMovie;
    if (value != null) {
      result
        ..add('castForMovie')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CastModel)])));
    }
    value = object.movieOfCast;
    if (value != null) {
      result
        ..add('movieOfCast')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.tvShowsOfCast;
    if (value != null) {
      result
        ..add('tvShowsOfCast')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TvShowModel)])));
    }
    value = object.currentMovie;
    if (value != null) {
      result
        ..add('currentMovie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MovieModel)));
    }
    value = object.currentCast;
    if (value != null) {
      result
        ..add('currentCast')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CastModel)));
    }
    value = object.currentUser;
    if (value != null) {
      result
        ..add('currentUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AuthUser)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'popularMovies':
          result.popularMovies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'topRatedMovie':
          result.topRatedMovie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'upcomingMovie':
          result.upcomingMovie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'castForMovie':
          result.castForMovie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CastModel)]))!
              as BuiltList<Object?>);
          break;
        case 'movieOfCast':
          result.movieOfCast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'tvShowsOfCast':
          result.tvShowsOfCast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TvShowModel)]))!
              as BuiltList<Object?>);
          break;
        case 'currentMovie':
          result.currentMovie.replace(serializers.deserialize(value,
              specifiedType: const FullType(MovieModel))! as MovieModel);
          break;
        case 'currentCast':
          result.currentCast.replace(serializers.deserialize(value,
              specifiedType: const FullType(CastModel))! as CastModel);
          break;
        case 'currentUser':
          result.currentUser.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthUser))! as AuthUser);
          break;
        case 'movieReview':
          result.movieReview.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Review)])
              ]))!);
          break;
        case 'tvReview':
          result.tvReview.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Review)])
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<MovieModel>? popularMovies;
  @override
  final BuiltList<MovieModel>? topRatedMovie;
  @override
  final BuiltList<MovieModel>? upcomingMovie;
  @override
  final BuiltList<CastModel>? castForMovie;
  @override
  final BuiltList<MovieModel>? movieOfCast;
  @override
  final BuiltList<TvShowModel>? tvShowsOfCast;
  @override
  final MovieModel? currentMovie;
  @override
  final CastModel? currentCast;
  @override
  final AuthUser? currentUser;
  @override
  final BuiltMap<String, BuiltList<Review>> movieReview;
  @override
  final BuiltMap<String, BuiltList<Review>> tvReview;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {this.popularMovies,
      this.topRatedMovie,
      this.upcomingMovie,
      this.castForMovie,
      this.movieOfCast,
      this.tvShowsOfCast,
      this.currentMovie,
      this.currentCast,
      this.currentUser,
      required this.movieReview,
      required this.tvReview})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        movieReview, r'AppState', 'movieReview');
    BuiltValueNullFieldError.checkNotNull(tvReview, r'AppState', 'tvReview');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        popularMovies == other.popularMovies &&
        topRatedMovie == other.topRatedMovie &&
        upcomingMovie == other.upcomingMovie &&
        castForMovie == other.castForMovie &&
        movieOfCast == other.movieOfCast &&
        tvShowsOfCast == other.tvShowsOfCast &&
        currentMovie == other.currentMovie &&
        currentCast == other.currentCast &&
        currentUser == other.currentUser &&
        movieReview == other.movieReview &&
        tvReview == other.tvReview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, popularMovies.hashCode);
    _$hash = $jc(_$hash, topRatedMovie.hashCode);
    _$hash = $jc(_$hash, upcomingMovie.hashCode);
    _$hash = $jc(_$hash, castForMovie.hashCode);
    _$hash = $jc(_$hash, movieOfCast.hashCode);
    _$hash = $jc(_$hash, tvShowsOfCast.hashCode);
    _$hash = $jc(_$hash, currentMovie.hashCode);
    _$hash = $jc(_$hash, currentCast.hashCode);
    _$hash = $jc(_$hash, currentUser.hashCode);
    _$hash = $jc(_$hash, movieReview.hashCode);
    _$hash = $jc(_$hash, tvReview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('popularMovies', popularMovies)
          ..add('topRatedMovie', topRatedMovie)
          ..add('upcomingMovie', upcomingMovie)
          ..add('castForMovie', castForMovie)
          ..add('movieOfCast', movieOfCast)
          ..add('tvShowsOfCast', tvShowsOfCast)
          ..add('currentMovie', currentMovie)
          ..add('currentCast', currentCast)
          ..add('currentUser', currentUser)
          ..add('movieReview', movieReview)
          ..add('tvReview', tvReview))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<MovieModel>? _popularMovies;
  ListBuilder<MovieModel> get popularMovies =>
      _$this._popularMovies ??= new ListBuilder<MovieModel>();
  set popularMovies(ListBuilder<MovieModel>? popularMovies) =>
      _$this._popularMovies = popularMovies;

  ListBuilder<MovieModel>? _topRatedMovie;
  ListBuilder<MovieModel> get topRatedMovie =>
      _$this._topRatedMovie ??= new ListBuilder<MovieModel>();
  set topRatedMovie(ListBuilder<MovieModel>? topRatedMovie) =>
      _$this._topRatedMovie = topRatedMovie;

  ListBuilder<MovieModel>? _upcomingMovie;
  ListBuilder<MovieModel> get upcomingMovie =>
      _$this._upcomingMovie ??= new ListBuilder<MovieModel>();
  set upcomingMovie(ListBuilder<MovieModel>? upcomingMovie) =>
      _$this._upcomingMovie = upcomingMovie;

  ListBuilder<CastModel>? _castForMovie;
  ListBuilder<CastModel> get castForMovie =>
      _$this._castForMovie ??= new ListBuilder<CastModel>();
  set castForMovie(ListBuilder<CastModel>? castForMovie) =>
      _$this._castForMovie = castForMovie;

  ListBuilder<MovieModel>? _movieOfCast;
  ListBuilder<MovieModel> get movieOfCast =>
      _$this._movieOfCast ??= new ListBuilder<MovieModel>();
  set movieOfCast(ListBuilder<MovieModel>? movieOfCast) =>
      _$this._movieOfCast = movieOfCast;

  ListBuilder<TvShowModel>? _tvShowsOfCast;
  ListBuilder<TvShowModel> get tvShowsOfCast =>
      _$this._tvShowsOfCast ??= new ListBuilder<TvShowModel>();
  set tvShowsOfCast(ListBuilder<TvShowModel>? tvShowsOfCast) =>
      _$this._tvShowsOfCast = tvShowsOfCast;

  MovieModelBuilder? _currentMovie;
  MovieModelBuilder get currentMovie =>
      _$this._currentMovie ??= new MovieModelBuilder();
  set currentMovie(MovieModelBuilder? currentMovie) =>
      _$this._currentMovie = currentMovie;

  CastModelBuilder? _currentCast;
  CastModelBuilder get currentCast =>
      _$this._currentCast ??= new CastModelBuilder();
  set currentCast(CastModelBuilder? currentCast) =>
      _$this._currentCast = currentCast;

  AuthUserBuilder? _currentUser;
  AuthUserBuilder get currentUser =>
      _$this._currentUser ??= new AuthUserBuilder();
  set currentUser(AuthUserBuilder? currentUser) =>
      _$this._currentUser = currentUser;

  MapBuilder<String, BuiltList<Review>>? _movieReview;
  MapBuilder<String, BuiltList<Review>> get movieReview =>
      _$this._movieReview ??= new MapBuilder<String, BuiltList<Review>>();
  set movieReview(MapBuilder<String, BuiltList<Review>>? movieReview) =>
      _$this._movieReview = movieReview;

  MapBuilder<String, BuiltList<Review>>? _tvReview;
  MapBuilder<String, BuiltList<Review>> get tvReview =>
      _$this._tvReview ??= new MapBuilder<String, BuiltList<Review>>();
  set tvReview(MapBuilder<String, BuiltList<Review>>? tvReview) =>
      _$this._tvReview = tvReview;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _popularMovies = $v.popularMovies?.toBuilder();
      _topRatedMovie = $v.topRatedMovie?.toBuilder();
      _upcomingMovie = $v.upcomingMovie?.toBuilder();
      _castForMovie = $v.castForMovie?.toBuilder();
      _movieOfCast = $v.movieOfCast?.toBuilder();
      _tvShowsOfCast = $v.tvShowsOfCast?.toBuilder();
      _currentMovie = $v.currentMovie?.toBuilder();
      _currentCast = $v.currentCast?.toBuilder();
      _currentUser = $v.currentUser?.toBuilder();
      _movieReview = $v.movieReview.toBuilder();
      _tvReview = $v.tvReview.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              popularMovies: _popularMovies?.build(),
              topRatedMovie: _topRatedMovie?.build(),
              upcomingMovie: _upcomingMovie?.build(),
              castForMovie: _castForMovie?.build(),
              movieOfCast: _movieOfCast?.build(),
              tvShowsOfCast: _tvShowsOfCast?.build(),
              currentMovie: _currentMovie?.build(),
              currentCast: _currentCast?.build(),
              currentUser: _currentUser?.build(),
              movieReview: movieReview.build(),
              tvReview: tvReview.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'popularMovies';
        _popularMovies?.build();
        _$failedField = 'topRatedMovie';
        _topRatedMovie?.build();
        _$failedField = 'upcomingMovie';
        _upcomingMovie?.build();
        _$failedField = 'castForMovie';
        _castForMovie?.build();
        _$failedField = 'movieOfCast';
        _movieOfCast?.build();
        _$failedField = 'tvShowsOfCast';
        _tvShowsOfCast?.build();
        _$failedField = 'currentMovie';
        _currentMovie?.build();
        _$failedField = 'currentCast';
        _currentCast?.build();
        _$failedField = 'currentUser';
        _currentUser?.build();
        _$failedField = 'movieReview';
        movieReview.build();
        _$failedField = 'tvReview';
        tvReview.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
