import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    return const FirebaseOptions(
        appId: '1:702206902475:android:847b51b3afb8116c04db4e',
        apiKey: 'AIzaSyB9hgOye3Fehwys3ZAeu96Bd9To2Ky7gdg',
        projectId: 'assignment5-8f751',
        messagingSenderId: '702206902475',
      );
   /* if (kIsWeb) {
      // Web
     return const FirebaseOptions(
        appId: '1:448618578101:web:0b650370bb29e29cac3efc',
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        projectId: 'react-native-firebase-testing',
        messagingSenderId: '448618578101',
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:448618578101:ios:0b650370bb29e29cac3efc',
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        projectId: 'react-native-firebase-testing',
        messagingSenderId: '448618578101',
        iosBundleId: 'io.flutter.plugins.firebasecoreexample',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:932762284186:android:88b164e87bfa32d67b2f23',
        apiKey: 'AIzaSyBVXoxfkSUKQhDIC7-uwZyEL8qvjcRgEtQ',
        projectId: 'assignment4-70a72',
        messagingSenderId: '932762284186',
      );
    }*/
  }
}