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
    apiKey: 'AIzaSyARos1mocKN6sBdLkTT5uKsSao2eX6he08',
    appId: '1:735782758862:web:a9f90c344032e7f814639f',
    messagingSenderId: '735782758862',
    projectId: 'fooddeliverytute-70928',
    authDomain: 'fooddeliverytute-70928.firebaseapp.com',
    storageBucket: 'fooddeliverytute-70928.firebasestorage.app',
    measurementId: 'G-KYEXQKNQR4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKN70PZsBnNZVbnk6b566EEw0a30Hr4BY',
    appId: '1:735782758862:android:f784076ed0fc9c7d14639f',
    messagingSenderId: '735782758862',
    projectId: 'fooddeliverytute-70928',
    storageBucket: 'fooddeliverytute-70928.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBn4zYvh6kV4dAIaDUCNsgTC0vON3BggJE',
    appId: '1:735782758862:ios:3aea40ae114c3fa414639f',
    messagingSenderId: '735782758862',
    projectId: 'fooddeliverytute-70928',
    storageBucket: 'fooddeliverytute-70928.firebasestorage.app',
    iosBundleId: 'com.example.food',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBn4zYvh6kV4dAIaDUCNsgTC0vON3BggJE',
    appId: '1:735782758862:ios:3aea40ae114c3fa414639f',
    messagingSenderId: '735782758862',
    projectId: 'fooddeliverytute-70928',
    storageBucket: 'fooddeliverytute-70928.firebasestorage.app',
    iosBundleId: 'com.example.food',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyARos1mocKN6sBdLkTT5uKsSao2eX6he08',
    appId: '1:735782758862:web:ba839f13583dbdab14639f',
    messagingSenderId: '735782758862',
    projectId: 'fooddeliverytute-70928',
    authDomain: 'fooddeliverytute-70928.firebaseapp.com',
    storageBucket: 'fooddeliverytute-70928.firebasestorage.app',
    measurementId: 'G-1PGBNS2XEW',
  );
}
