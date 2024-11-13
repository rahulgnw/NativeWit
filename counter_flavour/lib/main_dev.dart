import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'environment/devcounter/dev_firebase_options.dart';
import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DevDefaultFirebaseOptions.currentPlatform);
  await runner.main();
}
