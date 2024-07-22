import 'package:flutter/material.dart';

ModalEventos(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.event),
          )
        ],
        backgroundColor: Color.fromARGB(255, 119, 121, 240),
        title: Text("Usuarios"),
      ),
      body: Center(
        child: Text("Aqui van los eventos"),
      ),
    );
  });
}