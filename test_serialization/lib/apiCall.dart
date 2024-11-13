import 'dart:convert';
import '';
import 'package:http/http.dart' as http;

class Api {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  static Future getUser(int userId) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return User.fromJson(data);
    } else {
      throw Exception('Failed to fetch user');
    }
  }

  static Future getAddress(int addressId) async {
    final response = await http.get(Uri.parse('$baseUrl/addresses/$addressId'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Address.fromJson(data);
    } else {
      throw Exception('Failed to fetch address');
    }
  }

  static Future<void> createUser(User user) async {
    final response = await http.post(Uri.parse('$baseUrl/users'),
        body: jsonEncode(user.toJson()));

    if (response.statusCode != 201) {
      throw Exception('Failed to create user');
    }
  }

  static Future<void> updateUser(int userId, User user) async {
    final response = await http.put(Uri.parse('$baseUrl/users/$userId'),
        body: jsonEncode(user.toJson()));

    if (response.statusCode != 200) {
      throw Exception('Failed to update user');
    }
  }

  static Future<void> deleteUser(int userId) async {
    final response = await http.delete(Uri.parse('$baseUrl/users/$userId'));

    if (response.statusCode != 204) {
      throw Exception('Failed to delete user');
    }
  }

}