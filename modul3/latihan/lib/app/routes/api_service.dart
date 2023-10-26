import 'dart:convert';
import 'package:http/http.dart' as http;
import '../data/todos.dart';

class ApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<Todos> fetchTodo() async {
    final response = await http.get(Uri.parse('$baseUrl/todos/5'));

    if (response.statusCode == 200) {
      return Todos.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
