import 'package:flutter/material.dart';
import 'package:mercadolibre2/src/Screens/AdminScreen.dart';
import 'package:mercadolibre2/src/Screens/HomeScreen.dart';
import 'package:mercadolibre2/src/Screens/LoginScreen.dart';
import 'package:mercadolibre2/src/Screens/RegisterScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black 
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) =>  const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register':(context)=> const RegisterScreen(),
        '/manage': (context)=> const AdminScreen(),
      },
    );
  }
}