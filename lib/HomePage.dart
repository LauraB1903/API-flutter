

import 'package:flutter/material.dart';

import 'categories.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 121, 240),
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Mercado Libre Col"),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/inicio');
                },
                child: Text("Iniciar Sesion"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Color.fromARGB(255, 119, 121, 240),
                ),
                ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Buscar producto",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  color: Color.fromARGB(255, 119, 121, 240),
                  ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_add_rounded),
                  color: Color.fromARGB(255, 119, 121, 240),
                  
                  ),
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  ),
                  itemCount:categories.length,
                  itemBuilder: (BuildContext context, int index ){
                    return GestureDetector(
                      onTap: (){

                      },
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(categories[index]['icono'],
                                size:40.0, color: Color.fromARGB(255, 119, 121, 240)),
                            SizedBox(height: 5.0),
                            Text(
                              categories[index]['titulo'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0, color:Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  )),
          ],
        ),
      ),
    );
  }
}