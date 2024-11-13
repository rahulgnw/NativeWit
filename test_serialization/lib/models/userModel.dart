import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_serialization/models/serializers.dart';

import 'addressModel.dart';
import 'companyModel.dart';

part 'user_model.g.dart';
//
// abstract class UserModel implements Built<UserModel, UserModelBuilder> {
//
//
//   UserModel._();
//   factory UserModel([void Function(UserModel) updates]) = _$UserModel;
//
//   Map<String, dynamic> toJson() {
//     return serializers.serializeWith(UserModel.serializer, this)as Map<String,dynamic> ;
//   }
//
//   static UserModel fromJson(Map<String, dynamic> json) {
//     return serializers.deserializeWith(UserModel.serializer, json)!;
//   }
//
//   static Serializer<UserModel> get serializer => _$userModelSerializer;
//   String get name;
//   AddressModel get address;
//   CompanyModel get company;
//
// }


abstract class UserModel implements Built<UserModel, UserModelBuilder> {
  UserModel._();
  factory UserModel([void Function(UserModelBuilder) updates]) = _$UserModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UserModel.serializer, this)as Map<String,dynamic>;
  }

  static UserModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserModel.serializer, json)!;
  }

  static Serializer<UserModel> get serializer => _$userModelSerializer;
  String get name;
  String get username;
  AddressModel get address;
  CompanyModel get company;
}