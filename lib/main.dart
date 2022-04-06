import 'package:flutter/material.dart';
import 'package:pi_dois/pages/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: const Color(0xffecdbc9),
      ),
      debugShowCheckedModeBanner: false,
      home:  SignInScreen(),
    );
  }
}