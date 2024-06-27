import 'package:flutter/material.dart';


class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key:_formKey,
            child: Column(
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkC_uWWuXjxPmVCt4ZFJZ5SliIHrdJjdGp3ZUwhMZMUQa5tXUzo7HL0yIQgeNda8jZ2gY&usqp=CAU",
                height: 100,
                width: 100,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Registrarse",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre de Usuario',
                    prefixIcon: const Icon(Icons.person_add_alt_1_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Correo',
                    prefixIcon: const Icon(Icons.email_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: Text("Registrarse"),
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 119, 121, 240),
                      foregroundColor: Colors.white)),
                ),
                SizedBox()
              ],
            )),
        ),
      ),
    );
  }
}