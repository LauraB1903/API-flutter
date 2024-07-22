import 'package:flutter/material.dart';
import 'package:flutter_application_api/src/screens/HomePage.dart';
import 'package:flutter_application_api/src/screens/paginaRegistro.dart';

void main() {
  runApp(const MercadoLibre());
}

class MercadoLibre extends StatelessWidget {
  const MercadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginadeRegistro(),
      routes: {
        '/inicio': (context) => HomePage(),
        '/registro':(context)=>PaginadeRegistro(),

      },
    );
  }
}
