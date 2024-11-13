import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/models/cast_model.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/models/serializers.dart';
import 'package:movie_app/models/review.dart';
import 'package:movie_app/models/tv_show_model.dart';

import 'auth_user.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(AppState.serializer, this)
        as Map<String, dynamic>;
  }

  static AppState fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppState.serializer, json)!;
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;

  BuiltList<MovieModel>? get popularMovies;

  BuiltList<MovieModel>? get topRatedMovie;

  BuiltList<MovieModel>? get upcomingMovie;

  BuiltList<CastModel>? get castForMovie;

  BuiltList<MovieModel>? get movieOfCast;

  BuiltList<TvShowModel>? get tvShowsOfCast;

  MovieModel? get currentMovie;

  CastModel? get currentCast;

  AuthUser? get currentUser;

  BuiltMap<String, BuiltList<Review>> get movieReview;

  BuiltMap<String, BuiltList<Review>> get tvReview;
}
