import 'package:flutter/material.dart';
import 'package:untitled/screens/auth/login_screen.dart';
import 'package:untitled/screens/auth/otp_screen.dart';
import 'package:untitled/screens/auth/register_screen.dart';
import 'package:untitled/screens/description_screen.dart';
import 'package:untitled/screens/home_screens.dart';
import 'package:untitled/screens/welcome_screen.dart';
void main()
{
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreens(),
    );
  }
}
