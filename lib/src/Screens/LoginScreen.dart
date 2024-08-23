import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.network(
                    "https://img.freepik.com/vector-premium/logotipo-mercado-linea-muebles-elegantes-mercado-linea_639175-1547.jpg",
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(height: 16.0),
                  const Text('Welcome to Company Name',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,
                      color: Colors.white
                      )),
                  const SizedBox(height: 16.0),
                  const Text('Sign in to continue',
                      style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(178, 235, 242, 1))),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Enter your email address",
                          labelStyle: const TextStyle(fontSize: 15,
                          color: Colors.cyan,fontWeight: FontWeight.w700),
                          prefixIcon: const Icon(Icons.email_rounded,color: Colors.white,),
                          enabledBorder: OutlineInputBorder(borderSide: 
                          const BorderSide(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide
                           (color: Colors.cyan, width: 2.0),
                           borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.cyan,width: 2.0))),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Enter your password",
                          labelStyle: const TextStyle(fontSize: 15,
                          color: Colors.cyan,fontWeight: FontWeight.w700),
                          prefixIcon: const Icon(Icons.lock_person,color: Colors.white,),
                          hintStyle: const TextStyle(fontSize: 15,),
                          enabledBorder: OutlineInputBorder(borderSide: 
                          const BorderSide(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide
                           (color: Colors.cyan, width: 2.0),
                           borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          backgroundColor: Colors.cyan,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Sign In'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'OR',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://cdn-icons-png.freepik.com/256/2504/2504739.png?semt=ais_hybrid',
                          height: 25,
                          width: 25,
                        ),
                        label: const Text(
                          style: TextStyle(color: Colors.cyan),
                          'Google'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))))),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon:const Icon(Icons.facebook_outlined,color: Color.fromRGBO(13, 71, 161, 1),
                        size: 25,),
                        label: const Text(style: TextStyle(color: Colors.cyan),
                        'Facebook'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)))))),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Forgot your password',
                          style:TextStyle(color: Colors.cyan)))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text('No account? Register',
                          style:TextStyle(color: Colors.cyan))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
