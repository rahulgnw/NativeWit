import 'package:counter_flavour/environment/prodcounter/prod_firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: ProdDefaultFirebaseOptions.currentPlatform);
  await runner.main();
}
