import 'dart:convert';

import 'package:get_api/models/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const String baseUrl = 'https://reqres.in/api';
  static Future <List<Users>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/users?page=2'));
      final body = response.body;
      final result = jsonDecode(body);
      List<Users> users = List<Users>.from(
        result['data'].map(
          (user) => Users.fromJson(user),
        ),
      );
      return users;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}