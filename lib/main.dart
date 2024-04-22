import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/screen/home/provider/home_provider.dart';
import 'package:quotes_app/utils/app_routs.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider.value(value: HomeProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: app_routs,
      )));
}
