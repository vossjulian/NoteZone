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
        return macos;
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
    apiKey: 'AIzaSyCVXiYYP-6XGc3EIIA4t3rgtGXaB4Bcn9k',
    appId: '1:555340373559:web:07d048af7b15e14e7ce9b2',
    messagingSenderId: '555340373559',
    projectId: 'notezone',
    authDomain: 'notezone.firebaseapp.com',
    storageBucket: 'notezone.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmYnjOYD0tIKdAkl8OqeRnsKyJpzwrAbo',
    appId: '1:555340373559:android:6ead158ba357834b7ce9b2',
    messagingSenderId: '555340373559',
    projectId: 'notezone',
    storageBucket: 'notezone.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzry_W0nMHz9IfwrV_ZRkzk8xFrL727tg',
    appId: '1:555340373559:ios:d6a0a4c5fe1392ee7ce9b2',
    messagingSenderId: '555340373559',
    projectId: 'notezone',
    storageBucket: 'notezone.appspot.com',
    iosClientId: '555340373559-h73u123jgilsqml2omkd7302jqnkd2rq.apps.googleusercontent.com',
    iosBundleId: 'de.notezone.notezone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzry_W0nMHz9IfwrV_ZRkzk8xFrL727tg',
    appId: '1:555340373559:ios:d6a0a4c5fe1392ee7ce9b2',
    messagingSenderId: '555340373559',
    projectId: 'notezone',
    storageBucket: 'notezone.appspot.com',
    iosClientId: '555340373559-h73u123jgilsqml2omkd7302jqnkd2rq.apps.googleusercontent.com',
    iosBundleId: 'de.notezone.notezone',
  );
}