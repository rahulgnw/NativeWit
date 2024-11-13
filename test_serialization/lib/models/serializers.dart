import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:test_serialization/models/userModel.dart';

import 'addressModel.dart';
import 'companyModel.dart';
part 'serializers.g.dart';

@SerializersFor(<Type>[
  UserModel,
  AddressModel,
  CompanyModel,


]
)
final Serializers  serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();