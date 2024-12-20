import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movie_app/models/review.dart';
import 'package:movie_app/models/tv_show_model.dart';


import 'app_state.dart';
import 'auth_user.dart';
import 'cast_model.dart';
import 'movie_model.dart';
part 'serializers.g.dart';

@SerializersFor(<Type>[
  CastModel,
  MovieModel,
  TvShowModel,
  AuthUser,
  Review,
  AppState,
]
)
final Serializers  serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();