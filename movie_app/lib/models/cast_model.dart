import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/Models/serializers.dart';

part 'cast_model.g.dart';

abstract class CastModel implements Built<CastModel, CastModelBuilder> {
  CastModel._();

  factory CastModel([void Function(CastModelBuilder) updates]) = _$CastModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CastModel.serializer, this)
        as Map<String, dynamic>;
  }

  static CastModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CastModel.serializer, json)!;
  }

  static Serializer<CastModel> get serializer => _$castModelSerializer;

  bool get adult;

  int get gender;

  int get id;

  String get knownForDepartment;

  @BuiltValueField(wireName: 'known_for_department')
  String get name;

  String get originalName;

  @BuiltValueField(wireName: 'orginal_name')
  String get popularity;

  String get profilePath;

  @BuiltValueField(wireName: 'profile_path')
  int get castId;

  @BuiltValueField(wireName: 'cast_id')
  String get character;

  String get creditId;

  @BuiltValueField(wireName: 'credit_id')
  int get order;
}
