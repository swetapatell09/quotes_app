import 'package:flutter/cupertino.dart';
import 'package:quotes_app/screen/home/view/home_screen.dart';
import 'package:quotes_app/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> app_routs = {
  "/": (context) => const SplashScreen(),
  "home": (context) => const HomeScreen()
};
