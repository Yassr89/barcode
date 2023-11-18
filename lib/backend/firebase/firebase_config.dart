import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyASq04q_LuPIIH3nX4DAMYmnnxXtLDMNh8",
            authDomain: "login-e486d.firebaseapp.com",
            projectId: "login-e486d",
            storageBucket: "login-e486d.appspot.com",
            messagingSenderId: "87756060357",
            appId: "1:87756060357:web:537eab1f2196fd21b8a2ac"));
  } else {
    await Firebase.initializeApp();
  }
}
