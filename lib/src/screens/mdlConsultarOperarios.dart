import 'package:flutter/material.dart';
import 'package:flutter_application_api/src/controller/ConsultarUsuario.dart';

MdlConsultarOperarios(BuildContext context){
  dynamic fetchOperarios;
  consultarOperarios().then((consultarOperarios){
    fetchOperarios = consultarOperarios;

    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.event),
                )
            ],
            backgroundColor: Colors.deepPurpleAccent[200],
            title: Text("Usuarios"),
          ),
          body: ListView.builder(
            itemCount: fetchOperarios.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(fetchOperarios[index].nombreCompleto),
                subtitle: Text(fetchOperarios[index].email),
                trailing: Icon(Icons.delete),
              );
            },
          ),
        );
      });
  });
}