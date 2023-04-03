
// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

class SQL {
  getRequset(String url) async {
    try {
      var response = await http.get(Uri.parse(url));//
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print("Error ${response.statusCode}");
      }
    } catch (e) {
      print(" Error catch $e");
    }
  }

  postRequset(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print("Error ${response.statusCode}");
      }
    } catch (e) {
      print(" Error catch $e");
    }
  }
}
