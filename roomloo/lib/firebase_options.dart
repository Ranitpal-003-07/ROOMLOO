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
    apiKey: 'AIzaSyAPjLfSkGqRmUOD6lWA63VcMO0zlnGehqc',
    appId: '1:463283944403:web:3d1751e5b0cbaa9bdd8d26',
    messagingSenderId: '463283944403',
    projectId: 'roomloo-12998',
    authDomain: 'roomloo-12998.firebaseapp.com',
    storageBucket: 'roomloo-12998.firebasestorage.app',
    measurementId: 'G-XEM6F5KVMS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiO74q1eez9oc2oLu7KxC7XHpbxApTmio',
    appId: '1:463283944403:android:8989be56a84d14a6dd8d26',
    messagingSenderId: '463283944403',
    projectId: 'roomloo-12998',
    storageBucket: 'roomloo-12998.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBji6ptqSxTrJdPIS_JGsCkaBJx3OGGFWQ',
    appId: '1:463283944403:ios:f248680703a2a1e3dd8d26',
    messagingSenderId: '463283944403',
    projectId: 'roomloo-12998',
    storageBucket: 'roomloo-12998.firebasestorage.app',
    androidClientId: '463283944403-9nkj5vu7sn39ed1k6u3refrjbsrvg429.apps.googleusercontent.com',
    iosClientId: '463283944403-8b4cl6s4oaaho6knq42ht4hddlqu088s.apps.googleusercontent.com',
    iosBundleId: 'com.example.roomloo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBji6ptqSxTrJdPIS_JGsCkaBJx3OGGFWQ',
    appId: '1:463283944403:ios:f248680703a2a1e3dd8d26',
    messagingSenderId: '463283944403',
    projectId: 'roomloo-12998',
    storageBucket: 'roomloo-12998.firebasestorage.app',
    androidClientId: '463283944403-9nkj5vu7sn39ed1k6u3refrjbsrvg429.apps.googleusercontent.com',
    iosClientId: '463283944403-8b4cl6s4oaaho6knq42ht4hddlqu088s.apps.googleusercontent.com',
    iosBundleId: 'com.example.roomloo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPjLfSkGqRmUOD6lWA63VcMO0zlnGehqc',
    appId: '1:463283944403:web:12c9fad1108ef153dd8d26',
    messagingSenderId: '463283944403',
    projectId: 'roomloo-12998',
    authDomain: 'roomloo-12998.firebaseapp.com',
    storageBucket: 'roomloo-12998.firebasestorage.app',
    measurementId: 'G-1G9294DS16',
  );

}