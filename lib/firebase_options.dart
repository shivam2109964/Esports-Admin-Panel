// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDWKxsIx6o_1ytZM18gqMYQsrGhFPRSW58',
    appId: '1:274636634429:web:0104d3be9f41f0fadced54',
    messagingSenderId: '274636634429',
    projectId: 'e-sport11-b831a',
    authDomain: 'e-sport11-b831a.firebaseapp.com',
    storageBucket: 'e-sport11-b831a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBM_6jnSNfQgbjm1BLu-5lJVyCObf01EEU',
    appId: '1:274636634429:android:4a61dcdc1af8304cdced54',
    messagingSenderId: '274636634429',
    projectId: 'e-sport11-b831a',
    storageBucket: 'e-sport11-b831a.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDWKxsIx6o_1ytZM18gqMYQsrGhFPRSW58',
    appId: '1:274636634429:web:0a96b36d852341d8dced54',
    messagingSenderId: '274636634429',
    projectId: 'e-sport11-b831a',
    authDomain: 'e-sport11-b831a.firebaseapp.com',
    storageBucket: 'e-sport11-b831a.appspot.com',
  );
}
