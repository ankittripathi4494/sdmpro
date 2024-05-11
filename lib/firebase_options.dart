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
    apiKey: 'AIzaSyDYKadF8BD_eH0Ft_ffmKVkQvA5ZgBJWvA',
    appId: '1:598230944848:web:fa6414f781fafaa9ee1555',
    messagingSenderId: '598230944848',
    projectId: 'sdmproapp',
    authDomain: 'sdmproapp.firebaseapp.com',
    storageBucket: 'sdmproapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMukDC3zfEFEyBYrU7KebJvGwaDZNBXZw',
    appId: '1:598230944848:android:055ce06959a45b8aee1555',
    messagingSenderId: '598230944848',
    projectId: 'sdmproapp',
    storageBucket: 'sdmproapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkmH0Keke2uv11GE-fSstytV4XyB5IsaE',
    appId: '1:598230944848:ios:0c83879765b33472ee1555',
    messagingSenderId: '598230944848',
    projectId: 'sdmproapp',
    storageBucket: 'sdmproapp.appspot.com',
    iosBundleId: 'com.sdmpro.sdmproapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkmH0Keke2uv11GE-fSstytV4XyB5IsaE',
    appId: '1:598230944848:ios:df58d06951df76ebee1555',
    messagingSenderId: '598230944848',
    projectId: 'sdmproapp',
    storageBucket: 'sdmproapp.appspot.com',
    iosBundleId: 'com.sdmpro.sdmproapp.RunnerTests',
  );
}
