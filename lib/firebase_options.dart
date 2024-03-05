// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCKs1nAn2ESmbJaYk23s_ZT_OQPyKiUQXs',
    appId: '1:1015172113303:web:d61074d2ef31f743e59ad2',
    messagingSenderId: '1015172113303',
    projectId: 'schatapp-c0f40',
    authDomain: 'schatapp-c0f40.firebaseapp.com',
    storageBucket: 'schatapp-c0f40.appspot.com',
    measurementId: 'G-WC0PHPQGSQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxxAwXwiMdzSrLnxEKxowFoubV6sD8oEw',
    appId: '1:1015172113303:android:c78f8c2bf9b59d71e59ad2',
    messagingSenderId: '1015172113303',
    projectId: 'schatapp-c0f40',
    storageBucket: 'schatapp-c0f40.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQDFvnulVLPK_PYsmS-IHdUVmVB2ZHfsk',
    appId: '1:1015172113303:ios:bad9b29741c671ade59ad2',
    messagingSenderId: '1015172113303',
    projectId: 'schatapp-c0f40',
    storageBucket: 'schatapp-c0f40.appspot.com',
    iosBundleId: 'com.example.schatapp',
  );
}