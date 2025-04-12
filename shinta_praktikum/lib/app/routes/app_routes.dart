import 'package:flutter/material.dart';
import '../views/login_page.dart';
import '../views/register_page.dart';
import '../views/home_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/login': (context) => LoginPage(),
      '/register': (context) => RegisterPage(),
      '/home': (context) => HomePage(),
    };
  }
}
