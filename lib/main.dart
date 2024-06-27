import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'RegistroUsuario.dart';

void main() {
  runApp(const MercadoLibre());
}

class MercadoLibre extends StatelessWidget{
  const MercadoLibre({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistroUsuario(),
      routes: {
        '/registro':(context)=>RegistroUsuario(),
        '/inicio':(context)=>HomePage(),
      },
    );
  }
}
///////////////
