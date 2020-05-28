import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;

  NetworkHelper({this.url});

  Future<dynamic> getCurrentdata() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      print(response.statusCode);
    }
  }
}
