import 'package:flutter/material.dart';
import 'package:mercadolibre2/src/Controllers/usuarios_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<Users>? _futureUsers;

  void _clearControllers() {
    _nombreController.clear();
    _emailController.clear();
    _passwordController.clear();
  }

  void _navigateToLogin() {
    Navigator.pushNamed(context, '/inicio');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://img.freepik.com/vector-premium/logotipo-mercado-linea-muebles-elegantes-mercado-linea_639175-1547.jpg',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Go to Sign Up",
                      style:
                          TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Create new account",
                      style:
                          TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _nombreController,
                      decoration: InputDecoration(
                          labelText: "Full name",
                          labelStyle: const TextStyle(fontSize: 15,
                          color: Colors.cyan,fontWeight: FontWeight.w700),
                          prefixIcon: const Icon(Icons.person_3_rounded,color: Colors.white,),
                          enabledBorder: OutlineInputBorder(borderSide: 
                            const BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide
                             (color: Colors.cyan, width: 2.0),
                             borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.cyan,width: 2.0))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter full name";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: "Email",
                           labelStyle: const TextStyle(fontSize: 15,
                            color: Colors.cyan,fontWeight: FontWeight.w700),
                          prefixIcon: const Icon(Icons.email_sharp,color: Colors.white,),
                          enabledBorder: OutlineInputBorder(borderSide: 
                            const BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide
                             (color: Colors.cyan, width: 2.0),
                             borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.cyan,width: 2.0))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your email address";
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _passwordController,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: const TextStyle(fontSize: 15,
                          color: Colors.cyan,fontWeight: FontWeight.w700),
                          prefixIcon: const Icon(Icons.lock_open_rounded,color: Colors.white,),
                          enabledBorder: OutlineInputBorder(borderSide: 
                            const BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide
                             (color: Colors.cyan, width: 2.0),
                             borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.cyan,width: 2.0))),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Password Confirmation",
                        labelStyle: const TextStyle(fontSize: 15,
                          color: Colors.cyan,fontWeight: FontWeight.w700),
                        prefixIcon: const Icon(Icons.lock,color: Colors.white),
                        enabledBorder: OutlineInputBorder(borderSide: 
                            const BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide
                             (color: Colors.cyan, width: 2.0),
                             borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.cyan,width: 2.0))),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter password confirmation";
                        } else if (value != _passwordController.text) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              setState(() {
                                createUsers(
                                  _nombreController.text,
                                  _emailController.text,
                                  _passwordController.text,
                                );
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Successful registration')));
                              _clearControllers();
                              _navigateToLogin();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan[400],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                          child: const Text("Sign up"),
                        )),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("You have an account?",
                        style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            "Log in",
                            style:
                                TextStyle(color: Colors.cyan),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
