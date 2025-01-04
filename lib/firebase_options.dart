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
    apiKey: 'AIzaSyDTd9_zdttrBH9leJYTIAK2ffA3iNKgKBc',
    appId: '1:148313253920:web:fd1b6c1eb897f30f19f445',
    messagingSenderId: '148313253920',
    projectId: 'fouchifood',
    authDomain: 'fouchifood.firebaseapp.com',
    storageBucket: 'fouchifood.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAN8q1xk-mvZ3aSU6IPx11Sv7-RSfAcIII',
    appId: '1:148313253920:android:51965d3e6d93862c19f445',
    messagingSenderId: '148313253920',
    projectId: 'fouchifood',
    storageBucket: 'fouchifood.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQhoNTuTQ3ekLUgN4OgWN2L2HrkUy-wQs',
    appId: '1:148313253920:ios:ecd8615ae863322019f445',
    messagingSenderId: '148313253920',
    projectId: 'fouchifood',
    storageBucket: 'fouchifood.appspot.com',
    androidClientId: '148313253920-hglk4n3jkf2am9lubcrvtkbpdq3ambho.apps.googleusercontent.com',
    iosClientId: '148313253920-ev0eul5vr4pnr5vtlbbl2pqhbvcbp8oj.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQhoNTuTQ3ekLUgN4OgWN2L2HrkUy-wQs',
    appId: '1:148313253920:ios:a45b47d30f509d8319f445',
    messagingSenderId: '148313253920',
    projectId: 'fouchifood',
    storageBucket: 'fouchifood.appspot.com',
    androidClientId: '148313253920-hglk4n3jkf2am9lubcrvtkbpdq3ambho.apps.googleusercontent.com',
    iosClientId: '148313253920-vjmf1r7mdtcevrhink4c4ko20d8j47mo.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
