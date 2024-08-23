import 'package:flutter/material.dart';
import 'package:mercadolibre2/src/Widgets/user_modal_widget.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
                Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white)),
        title: const Text(
          "Administrator User",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://cdn-icons-png.flaticon.com/512/1535/1535024.png",
              width: 300,
              height: 300),
          const SizedBox(height: 16.0),
          Card(
            shadowColor: Colors.white,
            color: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
            child: ListTile(
              title: const Text("User Search",
              style: TextStyle(color: Colors.white)),
              leading: const Icon(Icons.person_search,color: Colors.cyan),
              trailing: const Icon(Icons.arrow_circle_right_outlined,color: Colors.cyan),
              onTap: () {},
            ),
          ),
          Card(
            shadowColor: Colors.white,
            color: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
              child: ListTile(
                  title: const Text("Users", 
                  style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.person_rounded,color: Colors.cyan),
                  trailing: const Icon(Icons.arrow_circle_right_outlined,color: Colors.cyan),
                  onTap: () {
                    modalUsers(context);
                  })),
          Card(
            shadowColor: Colors.white,
            color: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
              child: ListTile(
                  title: const Text("Requests",
                  style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.connect_without_contact_rounded, color: Colors.cyan),
                  trailing: const Icon(Icons.arrow_circle_right_outlined, color: Colors.cyan),
                  onTap: () {})),
          Card(
            shadowColor: Colors.white,
            color: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(15),
            elevation: 10,
              child: ListTile(
                  title: const Text("Reports",
                  style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.info_rounded,color: Colors.cyan),
                  trailing: const Icon(Icons.arrow_circle_right_outlined,color: Colors.cyan),
                  onTap: () {})),
        ],
      ),
    );
  }
}
