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
    apiKey: 'AIzaSyCGPXiBFLyp6-Lczp7YlOAW38wV5T6zzS0',
    appId: '1:1009649273389:web:c8524d19e2417eafed86a4',
    messagingSenderId: '1009649273389',
    projectId: 'refierelo-a449c',
    authDomain: 'refierelo-a449c.firebaseapp.com',
    storageBucket: 'refierelo-a449c.appspot.com',
    measurementId: 'G-ETQQCLJ5G6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXa0U9bNpGN0US6SB721Tj7klsUygswLI',
    appId: '1:1009649273389:android:b63aecfabf9b4369ed86a4',
    messagingSenderId: '1009649273389',
    projectId: 'refierelo-a449c',
    storageBucket: 'refierelo-a449c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcs-DRwmu4UCpwQAVb4qtPsYY8HpochEs',
    appId: '1:1009649273389:ios:3aa653d5100f3911ed86a4',
    messagingSenderId: '1009649273389',
    projectId: 'refierelo-a449c',
    storageBucket: 'refierelo-a449c.appspot.com',
    iosBundleId: 'com.example.refiereloMarketplace',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcs-DRwmu4UCpwQAVb4qtPsYY8HpochEs',
    appId: '1:1009649273389:ios:3aa653d5100f3911ed86a4',
    messagingSenderId: '1009649273389',
    projectId: 'refierelo-a449c',
    storageBucket: 'refierelo-a449c.appspot.com',
    iosBundleId: 'com.example.refiereloMarketplace',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGPXiBFLyp6-Lczp7YlOAW38wV5T6zzS0',
    appId: '1:1009649273389:web:f753b4780d290f04ed86a4',
    messagingSenderId: '1009649273389',
    projectId: 'refierelo-a449c',
    authDomain: 'refierelo-a449c.firebaseapp.com',
    storageBucket: 'refierelo-a449c.appspot.com',
    measurementId: 'G-XPTS6HRRQ1',
  );
}
