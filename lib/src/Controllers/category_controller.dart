import 'package:http/http.dart' as http;
import 'dart:convert';

class Category {
  final String id;
  final String nombre;

  Category({required this.id, required this.nombre});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      nombre: json['nombre']?? 'N/A',
    );
  }
}

Future<List<Category>> fetchCategories() async {
  final response = await http.get(Uri.parse('https://back-flutter-api.onrender.com/api/categorias'));
  if (response.statusCode == 201) {
    List<dynamic> jsonList = jsonDecode(response.body);
    return jsonList.map((json) => Category.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load categories');
  }
}