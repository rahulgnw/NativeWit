import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:serilization/serializers.dart';

part 'player.g.dart';

abstract class Player implements Built<Player, PlayerBuilder> {


  Player._();
  factory Player([void Function(PlayerBuilder) updates]) = _$Player;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Player.serializer, this) as Map<String,dynamic>;
  }

  static Player fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Player.serializer, json)!;
  }

  static Serializer<Player> get serializer => _$playerSerializer;

  String get name;
  int get age;

}

abstract class address implements Built<Address, Zipcode> {


  Player._();
  factory Player([void Function(PlayerBuilder) updates]) = _$Player;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Player.serializer, this) as Map<String,dynamic>;
  }

  static Player fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Player.serializer, json)!;
  }

  static Serializer<Player> get serializer => _$playerSerializer;

  String get address;
  int get Zipcode;
  String get;

}