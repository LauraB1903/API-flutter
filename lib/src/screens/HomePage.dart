import 'package:flutter/material.dart';
import 'package:flutter_application_api/src/screens/barraNavegacion.dart';
import 'package:flutter_application_api/src/screens/categories.dart';

 
class HomePage extends StatelessWidget {
  const HomePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 121, 240),
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Mercado Libre Col'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inicio');
                },
                child: Text('Iniciar sesión'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              )
            ],
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Buscar producto',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.grey[200]
                    ),                      
                  ),        
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                   
                  },
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.notifications),
                )
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            categories[index]['icono'],
                            size: 40.0,
                            color: Color.fromARGB(255, 119, 121, 240),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            categories[index]['titulo'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 12.0,color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              ),
          ],
        )
      ),
      bottomNavigationBar: const BarraNavegacionInferior(),
    );
  }
}
 
