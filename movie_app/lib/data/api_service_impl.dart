import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:built_collection/src/list.dart';

import 'package:movie_app/models/cast_model.dart';

import 'package:movie_app/models/movie_model.dart';

import 'package:movie_app/models/tv_show_model.dart';

import '../core/api_service.dart';

extension on String{
  Uri toUri() => Uri.parse(this);
}

class ApiUrls {
  String get _baseUrl => 'https://api.themoviedb.org/3';

  String get _movieUrl => '$_baseUrl/movie';

  String get _castUrl => '$_baseUrl/person';

  String get popular => '$_movieUrl/popular';

  String get topRated => '$_movieUrl/top_rated';

  String get upcoming => '$_movieUrl/upcoming';

  String movieCast(int id) => '$_movieUrl/$id/credits';

  String movieDetails(int id) => '$_movieUrl/$id';

  String castTvShows(int id) => '$_castUrl/$id/tv_credits';

  String castMovies(int id) => '$_castUrl/$id/movie_credits';

  String moviePic(int id) => '$_movieUrl/$id';

  String castPic(int id) => '$_castUrl/$id';
}

class ApiServiceImpl implements ApiService {
  final ApiUrls url = ApiUrls();

  Map<String, String> get defaultHeader =>
      {
        'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4OWI3MjM3YmJjZmYwZmEwNmU0NzgxMWJkZjBlYTEyMyIsIm5iZiI6MTczMDE4MjEyNC41NDY5NjksInN1YiI6IjYxMjMzZjY0ZDY1OTBiMDA1ZDgyNmNkOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.9ypJjMejHuSSD9POiGpF_V7W9yZpExosEKjuoaeDDjc'
      };

  @override
  Future<BuiltList<MovieModel>> getTopRatedMovie() async {
    http.Response response =
    await http.get((url.topRated).toUri(), headers: defaultHeader,);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)["results"] as List;
      List<MovieModel> movies = [];
      for (final i in body) {
        movies.add(MovieModel.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Failed to fetch top rated data';
  }

  @override
  Future<MovieModel> getMovieForId({required int id}) async {
    http.Response response = await http.get(
      (url.movieDetails(id)).toUri(), headers: defaultHeader,);
    if (response.statusCode == 200) {
      return MovieModel.fromJson(jsonDecode(response.body));
    }

    throw 'failed to fetch movieId';
  }

  @override
  Future<BuiltList<MovieModel>> getPopularMovie() async {
    http.Response response = await http.get(
      (url.popular).toUri(), headers: defaultHeader,);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['results'] as List;
      List<MovieModel> movies = [];
      for (final i in body) {
        movies.add(MovieModel.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw ' fail to fetch popular movie';
  }


  @override
  Future<BuiltList<TvShowModel>> getTvShowsOfCast({required int id}) async{
    http.Response response = await http.get(
        (url.castPic(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['results'] as List;
      List<TvShowModel> tvShows = [];
      for(final i in body){
        tvShows.add(TvShowModel.fromJson(i));
      }
      return tvShows.toBuiltList();
    }
    throw 'fail to fetch cast ID';
  }

  @override
  Future<BuiltList<MovieModel>> getUpcomingMovie() async {
    http.Response response = await http.get(
      (url.upcoming).toUri(), headers: defaultHeader,);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['results'] as List;
      List<MovieModel> movies = [];
      for (final i in body) {
        movies.add(MovieModel.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'fail to fetch upcoming movies ';
  }

  @override
  Future<CastModel> getCastForId({required int id}) async {
    http.Response response = await http.get(
        (url.castPic(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      return CastModel.fromJson(body);
    }
    throw 'fail to fetch cast ID';
  }


  @override
  Future<BuiltList<CastModel>> getCastForMovie({required int id})async {
    http.Response response = await http.get(
        (url.castPic(id)).toUri(), headers: defaultHeader);
    if (response.statusCode == 200) {
      List body = jsonDecode(response.body)['cast'] as List;
      List <CastModel> person =[];
      for (final i in body){
        person.add(CastModel.fromJson(i));
      }

    }
    throw 'fail to fetch movie cast';
  }

  @override
  Future<BuiltList<MovieModel>> getMovieOfCast({required int id}) async {
http.Response response = await http.get(url.moviePic(id).toUri(),headers: defaultHeader);
  if(response.statusCode == 200){
  List body =jsonDecode (response.body)['result']as List;
  List <MovieModel> movies =[];
  for (final i in body){
    movies.add(MovieModel.fromJson(i));
  }
  }
  throw'fail to fetch the data';
  }


}
