import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


class NetworkHelper{
  NetworkHelper(this.url);
  final String url;
  var decodedData;
  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      decodedData = convert.jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }}