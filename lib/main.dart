import 'package:flutter/material.dart';
import 'package:widgets_basic/sign_in/sign_in.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ON BOARDING SCREEN',
      theme: ThemeData.light(useMaterial3: true),
      home:  SignInScreen(),
      routes: {
        '/signup': (context) => SignUpScreen(), // Define the route for SignUpScreen
      },
    );
  }
}



