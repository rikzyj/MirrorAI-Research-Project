import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB4wsMn98cFrF-lbwh9cZ67vzBVbrIqV8A",
            authDomain: "flutter-flow-a-i-chat-t-m8p4yt.firebaseapp.com",
            projectId: "flutter-flow-a-i-chat-t-m8p4yt",
            storageBucket: "flutter-flow-a-i-chat-t-m8p4yt.firebasestorage.app",
            messagingSenderId: "538091076285",
            appId: "1:538091076285:web:1afdddc33e91c3ea04d5d4"));
  } else {
    await Firebase.initializeApp();
  }
}
