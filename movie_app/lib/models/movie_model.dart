import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/Models/serializers.dart';

part 'movie_model.g.dart';

abstract class MovieModel implements Built<MovieModel, MovieModelBuilder> {
  MovieModel._();

  factory MovieModel([void Function(MovieModelBuilder) updates]) = _$MovieModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieModel.serializer, this) as Map<String, dynamic>;
  }

  static MovieModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieModel.serializer, json)!;
  }

  static Serializer<MovieModel> get serializer => _$movieModelSerializer;

  bool get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  int get genreId;

  @BuiltValueField(wireName: "genre_ids")
  BuiltList<int> get genreIds;

  int get id;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  String get overview;

  int get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  String get title;

  bool get video;

  String get voteAverage;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverageValue; // Change this to double for average

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;
}