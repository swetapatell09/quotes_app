import 'package:flutter/cupertino.dart';
import 'package:quotes_app/utils/api_helper.dart';

import '../model/home_model.dart';

class HomeProvider with ChangeNotifier {
  QuotesModel? q1;
  void getData() async {
    QuotesModel? model = await APIHelper.helper.getQuotes();
    q1 = model;
    notifyListeners();
  }
}
