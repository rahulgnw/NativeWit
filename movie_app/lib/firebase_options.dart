// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import "package:firebase_core/firebase_core.dart" show FirebaseOptions;
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
class DefaultFirebaseOptions {
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

  static FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCb8aki-iFVYu9Urozc2WlCSHZRVTMxyBs',
    appId: '1:660764733777:web:4413281941d39ce964e370',
    messagingSenderId: '660764733777',
    projectId: 'movie-app-615c8',
    authDomain: 'movie-app-615c8.firebaseapp.com',
    storageBucket: 'movie-app-615c8.firebasestorage.app',
    measurementId: 'G-PYYHB6FQ6X',
  );

  static FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5buLOMtR8Qdrjsjw4qloXXY8WXeA1JmY',
    appId: '1:660764733777:android:1bd7bffe1c5b69bb64e370',
    messagingSenderId: '660764733777',
    projectId: 'movie-app-615c8',
    storageBucket: 'movie-app-615c8.firebasestorage.app',
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBV1LTmdT0Klb4MTp5uBMZJuBrHl_UsIy0',
    appId: '1:660764733777:ios:8190582df65e639f64e370',
    messagingSenderId: '660764733777',
    projectId: 'movie-app-615c8',
    storageBucket: 'movie-app-615c8.firebasestorage.app',
    iosBundleId: 'com.example.movieApp',
  );

  static FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBV1LTmdT0Klb4MTp5uBMZJuBrHl_UsIy0',
    appId: '1:660764733777:ios:8190582df65e639f64e370',
    messagingSenderId: '660764733777',
    projectId: 'movie-app-615c8',
    storageBucket: 'movie-app-615c8.firebasestorage.app',
    iosBundleId: 'com.example.movieApp',
  );

  static  FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCb8aki-iFVYu9Urozc2WlCSHZRVTMxyBs',
    appId: '1:660764733777:web:a3a51260f7a9bbc064e370',
    messagingSenderId: '660764733777',
    projectId: 'movie-app-615c8',
    authDomain: 'movie-app-615c8.firebaseapp.com',
    storageBucket: 'movie-app-615c8.firebasestorage.app',
    measurementId: 'G-HZ820DLSXL',
  );
}
