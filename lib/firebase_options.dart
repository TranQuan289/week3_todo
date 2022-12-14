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
    apiKey: 'AIzaSyAbVcX1gZumuEbuwZYrFiUbgdkCUorfOdI',
    appId: '1:900166280989:web:9b737301908617fdcb23f4',
    messagingSenderId: '900166280989',
    projectId: 'messaging-bc7c2',
    authDomain: 'messaging-bc7c2.firebaseapp.com',
    storageBucket: 'messaging-bc7c2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDNZ9cbJtlnJvzL-YQRthCKxmTRr4YkjQ',
    appId: '1:900166280989:android:6951c3d1d699b5dbcb23f4',
    messagingSenderId: '900166280989',
    projectId: 'messaging-bc7c2',
    storageBucket: 'messaging-bc7c2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXI6iygjefDVi96e7aeqpYZ1HaWUlb7RA',
    appId: '1:900166280989:ios:4cee4ad46d98be2ccb23f4',
    messagingSenderId: '900166280989',
    projectId: 'messaging-bc7c2',
    storageBucket: 'messaging-bc7c2.appspot.com',
    iosClientId: '900166280989-drgms7frbk4q2pc19lddupoo8ge9ma35.apps.googleusercontent.com',
    iosBundleId: 'com.example.week3Todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXI6iygjefDVi96e7aeqpYZ1HaWUlb7RA',
    appId: '1:900166280989:ios:4cee4ad46d98be2ccb23f4',
    messagingSenderId: '900166280989',
    projectId: 'messaging-bc7c2',
    storageBucket: 'messaging-bc7c2.appspot.com',
    iosClientId: '900166280989-drgms7frbk4q2pc19lddupoo8ge9ma35.apps.googleusercontent.com',
    iosBundleId: 'com.example.week3Todoapp',
  );
}
