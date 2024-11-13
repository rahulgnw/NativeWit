import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/Models/serializers.dart';
part 'tv_show_model.g.dart';
abstract class TvShowModel implements Built<TvShowModel, TvShowModelBuilder> {
  TvShowModel._();
  factory TvShowModel([void Function(TvShowModelBuilder) updates]) = _$TvShowModel;
  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TvShowModel.serializer, this) as Map<String, dynamic>;
  }
  static TvShowModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TvShowModel.serializer, json)!;
  }
  static Serializer<TvShowModel> get serializer => _$tvShowModelSerializer;
  bool get adult;
  String get backdropPath;
  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIds;
  int get id;
  @BuiltValueField(wireName: 'origin_country')
  BuiltList<String> get originCountry;
  String get originalLanguage;
  @BuiltValueField(wireName: 'original_name')
  String get originalName;
  String get overview;
  int get popularity;
  String get posterPath;
  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;
  String get name;
  double get voteAverage;
  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;
  String get character;
  @BuiltValueField(wireName: 'credit_id')
  String get creditId;
  @BuiltValueField(wireName: 'episode_count')
  int get episodeCount;
}