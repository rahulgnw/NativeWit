import 'dart:core';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_serialization/models/serializers.dart';

part 'company_model.g.dart';

abstract class CompanyModel implements Built<CompanyModel, CompanyModelBuilder> {


  CompanyModel._();
  factory CompanyModel([void Function(CompanyModelBuilder) updates]) = _$CompanyModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CompanyModel.serializer, this)as Map<String,dynamic>;
  }

  static CompanyModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CompanyModel.serializer, json)!;
  }

  static Serializer<CompanyModel> get serializer => _$companyModelSerializer;

  String get Name;
  String get CatchPhrase;
}