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
class DevDefaultFirebaseOptions {
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
    apiKey: 'AIzaSyCV0RqYfVpzN_q5EFo8H1cIfjGXQAAltBg',
    appId: '1:691136255824:web:a002d0887380ddd8fbbe55',
    messagingSenderId: '691136255824',
    projectId: 'devcounter-bfea9',
    authDomain: 'devcounter-bfea9.firebaseapp.com',
    storageBucket: 'devcounter-bfea9.firebasestorage.app',
    measurementId: 'G-PR4RJRFEPQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9MeDWUbvo6-EaG1ZiBqKV9yhT2njAETs',
    appId: '1:691136255824:android:dcf7b2c95e85f268fbbe55',
    messagingSenderId: '691136255824',
    projectId: 'devcounter-bfea9',
    storageBucket: 'devcounter-bfea9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8MM2NLkpvUH4ut9fZQodXEagnsxjep4E',
    appId: '1:691136255824:ios:497dd62c2de2ec93fbbe55',
    messagingSenderId: '691136255824',
    projectId: 'devcounter-bfea9',
    storageBucket: 'devcounter-bfea9.firebasestorage.app',
    iosBundleId: 'com.example.counterFlavour',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8MM2NLkpvUH4ut9fZQodXEagnsxjep4E',
    appId: '1:691136255824:ios:497dd62c2de2ec93fbbe55',
    messagingSenderId: '691136255824',
    projectId: 'devcounter-bfea9',
    storageBucket: 'devcounter-bfea9.firebasestorage.app',
    iosBundleId: 'com.example.counterFlavour',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCV0RqYfVpzN_q5EFo8H1cIfjGXQAAltBg',
    appId: '1:691136255824:web:35a3fd5309f2688dfbbe55',
    messagingSenderId: '691136255824',
    projectId: 'devcounter-bfea9',
    authDomain: 'devcounter-bfea9.firebaseapp.com',
    storageBucket: 'devcounter-bfea9.firebasestorage.app',
    measurementId: 'G-GLCDVMYNB9',
  );
}
