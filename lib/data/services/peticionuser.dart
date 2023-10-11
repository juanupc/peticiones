import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:peticiones/domain/models/user.dart';
import 'package:http/http.dart' as http;

class PeticionesUser {
  static Future<List<User>> getUser() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');

    final response = await http.get(url);
    print(response.body);
    return compute(convertir, response.body);
  }

  static List<User> convertir(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();

    return pasar.map<User>((json) => User.fromJson(json)).toList();
  }
}
