
import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:movie_app/models/cast_model.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/models/tv_show_model.dart';

abstract class ApiService{
  Future<BuiltList<MovieModel>> getPopularMovie();
  Future<MovieModel> getMovieForId({required int id});
  Future<CastModel> getCastForId({required int id});
  Future<BuiltList<MovieModel>> getTopRatedMovie();
  Future<BuiltList<MovieModel>> getUpcomingMovie();
  Future<BuiltList<CastModel>> getCastForMovie({required int id});
  Future<BuiltList<MovieModel>> getMovieOfCast({required int id});
  Future<BuiltList<TvShowModel>> getTvShowsOfCast({required int id});
}