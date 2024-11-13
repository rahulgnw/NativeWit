import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_serialization/models/serializers.dart';

part 'address_model.g.dart';

abstract class AddressModel implements Built<AddressModel, AddressModelBuilder> {

  AddressModel._();
  factory AddressModel([void Function(AddressModelBuilder) updates]) = _$AddressModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(AddressModel.serializer, this) as Map <String,dynamic>;
  }

  static AddressModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AddressModel.serializer, json)!;
  }

  static Serializer<AddressModel> get serializer => _$addressModelSerializer;
  String get street;
  String get city;
  int get Zipcode;
  @BuiltValueField(wireName: 'is', serialize:true)
  bool get isRetired;

}