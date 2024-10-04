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
    apiKey: 'AIzaSyAU1XyjZTbniQbSH6FfluSWRWDhxgnPJIY',
    appId: '1:245236793345:web:0425957cd0e4bc204d8000',
    messagingSenderId: '245236793345',
    projectId: 'web-boiler-template',
    authDomain: 'web-boiler-template.firebaseapp.com',
    storageBucket: 'web-boiler-template.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-7tdPaJ7Zyl0W99QKRCirxd4wvVwqsr8',
    appId: '1:245236793345:android:cf3963cceb20a16c4d8000',
    messagingSenderId: '245236793345',
    projectId: 'web-boiler-template',
    storageBucket: 'web-boiler-template.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAXGxI9agpRLnWdTpqcw9siQBejt9y1OA',
    appId: '1:245236793345:ios:38e733b99d30053d4d8000',
    messagingSenderId: '245236793345',
    projectId: 'web-boiler-template',
    storageBucket: 'web-boiler-template.appspot.com',
    iosBundleId: 'com.example.firebasenotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDAXGxI9agpRLnWdTpqcw9siQBejt9y1OA',
    appId: '1:245236793345:ios:38e733b99d30053d4d8000',
    messagingSenderId: '245236793345',
    projectId: 'web-boiler-template',
    storageBucket: 'web-boiler-template.appspot.com',
    iosBundleId: 'com.example.firebasenotification',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDUFDhncDt5cY8sSTCKvck63evWu658iP8',
    appId: '1:245236793345:web:0b7c7ee678af2d204d8000',
    messagingSenderId: '245236793345',
    projectId: 'web-boiler-template',
    authDomain: 'web-boiler-template.firebaseapp.com',
    storageBucket: 'web-boiler-template.appspot.com',
  );
}
