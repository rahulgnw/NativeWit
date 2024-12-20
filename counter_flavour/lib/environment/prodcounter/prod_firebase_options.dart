// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'dev_firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class ProdDefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC8PbDUMsohRpiyV3q53YMlm8M7X0UBeag',
    appId: '1:115012758554:web:603704fd1a24459f74b5a3',
    messagingSenderId: '115012758554',
    projectId: 'counterprod-b1c30',
    authDomain: 'counterprod-b1c30.firebaseapp.com',
    storageBucket: 'counterprod-b1c30.firebasestorage.app',
    measurementId: 'G-6S1BD85YKF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAO-gcefZL4Nlu_GYI2UTM7uynXsHUCuoQ',
    appId: '1:115012758554:android:4aa06c687c58c4ae74b5a3',
    messagingSenderId: '115012758554',
    projectId: 'counterprod-b1c30',
    storageBucket: 'counterprod-b1c30.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBU5sH0m5Uxt0jEjKOLo7obJS95BLCWulE',
    appId: '1:115012758554:ios:e2d890153cc82eab74b5a3',
    messagingSenderId: '115012758554',
    projectId: 'counterprod-b1c30',
    storageBucket: 'counterprod-b1c30.firebasestorage.app',
    iosBundleId: 'com.example.counterFlavour',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBU5sH0m5Uxt0jEjKOLo7obJS95BLCWulE',
    appId: '1:115012758554:ios:e2d890153cc82eab74b5a3',
    messagingSenderId: '115012758554',
    projectId: 'counterprod-b1c30',
    storageBucket: 'counterprod-b1c30.firebasestorage.app',
    iosBundleId: 'com.example.counterFlavour',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC8PbDUMsohRpiyV3q53YMlm8M7X0UBeag',
    appId: '1:115012758554:web:4a361d95b5d39f3674b5a3',
    messagingSenderId: '115012758554',
    projectId: 'counterprod-b1c30',
    authDomain: 'counterprod-b1c30.firebaseapp.com',
    storageBucket: 'counterprod-b1c30.firebasestorage.app',
    measurementId: 'G-DF4881DF2V',
  );
}
