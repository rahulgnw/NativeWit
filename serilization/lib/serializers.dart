import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:serilization/player.dart';
part 'serializers.g.dart';

@SerializersFor(<Type>[
  Player
]
)
final Serializers  serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();