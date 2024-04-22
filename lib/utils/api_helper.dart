import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quotes_app/screen/home/model/home_model.dart';

class APIHelper {
  static APIHelper helper = APIHelper._();
  APIHelper._();
  Future<QuotesModel?> getQuotes() async {
    String link = "https://api.quotable.io/quotes?page={PAGE_NUMBER}";
    var response = await http.get(Uri.parse(link));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      QuotesModel model = QuotesModel.mapToModel(json);
      return model;
    }
    return null;
  }
}
