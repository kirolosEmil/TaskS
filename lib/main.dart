import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Login_google.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginGoogle(),
    );
  }
}