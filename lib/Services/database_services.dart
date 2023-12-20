import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:system_sevenheads/Models/user.dart';

import 'global.dart';

class DatabaseServices {
  static Future<User> addUser(String email, String username, String password) async {
    Map data = {
      "email": email,
      "username": username,
      "password": password,
    };

    var body = json.encode(data);
    var url = Uri.parse(baseURL + '');

    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);
    Map responseMap = jsonDecode(response.body);
    User user = User.fromMap(responseMap);

    return user;
  }

  static Future<List<User>> getUsers() async {
    var url = Uri.parse(baseURL);

    http.Response response = await http.get(
      url,
      headers: headers,
    );

    print(response.body);

    List responseList = jsonDecode(response.body);
    List<User> users = [];
    for(Map userMap in responseList){
      User user = User.fromMap(userMap);
      users.add(user);
    }

    return users;
  }
}
