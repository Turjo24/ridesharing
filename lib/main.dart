import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
  ? await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDK0TZCr-bCys9grk6CB6HLkIMrKeOH3Sk",
        appId: "1:4310009780:android:930a7a1cb95505e08f14e1",
        messagingSenderId: "4310009780",
        projectId: "rdsharing-c212b",
        storageBucket: "rdsharing-c212b.appspot.com"),
  )
  : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: 'sombit@gmail.com', password: '9977880');
          },
          child: const Text('press'),
        ),
      ),
    );
  }
}