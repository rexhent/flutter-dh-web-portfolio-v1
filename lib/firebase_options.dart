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
    apiKey: 'AIzaSyADQ0yo8UO3xncq8x0gxGkVUV5GUL7_CbI',
    appId: '1:86231600038:web:889da08c40f49ac1591d67',
    messagingSenderId: '86231600038',
    projectId: 'flutter-dh-web-portfolio-v1',
    authDomain: 'flutter-dh-web-portfolio-v1.firebaseapp.com',
    storageBucket: 'flutter-dh-web-portfolio-v1.appspot.com',
    measurementId: 'G-YQSEHLKK28',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBerq_FUg0KejH7g2ZzI4CGzjKofCwqpgc',
    appId: '1:86231600038:android:3807cd318dbd04dd591d67',
    messagingSenderId: '86231600038',
    projectId: 'flutter-dh-web-portfolio-v1',
    storageBucket: 'flutter-dh-web-portfolio-v1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlzfiz1MSZEtxuPKEzPefoDbIiT_62Uq8',
    appId: '1:86231600038:ios:7ce2a28a9b3eb568591d67',
    messagingSenderId: '86231600038',
    projectId: 'flutter-dh-web-portfolio-v1',
    storageBucket: 'flutter-dh-web-portfolio-v1.appspot.com',
    iosClientId: '86231600038-s9sgn7qas6j6e1a6pajivao9cn2rbb1g.apps.googleusercontent.com',
    iosBundleId: 'com.example.miCardFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlzfiz1MSZEtxuPKEzPefoDbIiT_62Uq8',
    appId: '1:86231600038:ios:7ce2a28a9b3eb568591d67',
    messagingSenderId: '86231600038',
    projectId: 'flutter-dh-web-portfolio-v1',
    storageBucket: 'flutter-dh-web-portfolio-v1.appspot.com',
    iosClientId: '86231600038-s9sgn7qas6j6e1a6pajivao9cn2rbb1g.apps.googleusercontent.com',
    iosBundleId: 'com.example.miCardFlutter',
  );
}