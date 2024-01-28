import 'package:flutter/material.dart';
import 'package:myapp/itoscreen.dart';
import 'package:myapp/phoneauth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/', // Set the initial route
        routes: {
          '/': (context) => PhoneAuth(), // Home screen is PhoneAuth
        });
  }
}
