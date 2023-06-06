import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehya/firebase_options.dart';
import 'package:vehya/pages/home.dart';

void main() async {
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyD9_Ehf6DpxSpm_SnNdYxuaKy0iMB2jOEE',
      appId: '1:412858480002:web:b07861cc20a66cd5a78b9b',
      messagingSenderId: '412858480002',
      projectId: 'vehya-39eed',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vehya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(x: true),
    );
  }
}
