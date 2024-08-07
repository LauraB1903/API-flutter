import 'package:flutter/material.dart';
import 'package:flutter_application_api/src/screens/mdlConsultarOperarios.dart';

class menuUsers extends StatefulWidget {
  const menuUsers({super.key});

  @override
  State<menuUsers> createState() => _menuUsersState();
}

class _menuUsersState extends State<menuUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 121, 240),
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {     
          },
          icon: Icon(Icons.arrow_back, color: Colors.white)),
         title: Text(
          "Administrar usuarios",
          style: TextStyle(color: Colors.white),
          ), 
      ),
    body: ListView(
      children: [
        Image.network("https://cdn-icons-png.flaticon.com/512/1535/1535024.png",
        width: 300,
        height: 300,
        ),
        SizedBox(height: 16.0),
        ListTile(
          title: Text("Buscar usuario"),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.arrow_circle_right_outlined),
          onTap: () {},
        ),
        SizedBox(height: 16.0),
        ListTile(
          title: Text("Usuarios"),
          leading: Icon(Icons.connect_without_contact_rounded),
          trailing: Icon(Icons.arrow_circle_right_outlined),
          onTap: () {
           MdlConsultarOperarios(context);
          },
        ),
        SizedBox(height: 16.0),
        ListTile(
          title: Text("Solicitudes"),
          leading: Icon(Icons.connect_without_contact_rounded),
          trailing: Icon(Icons.arrow_circle_right_outlined),
          onTap: () {},
        ),
        SizedBox(height: 16.0),
        ListTile(
          title: Text("Informes"),
          leading: Icon(Icons.connect_without_contact_rounded),
          trailing: Icon(Icons.arrow_circle_right_outlined),
          onTap: () {},
        ),
      ],
    ),
    );
  }
}