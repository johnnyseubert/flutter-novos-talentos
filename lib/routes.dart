import 'package:aula_novos_talentos/pages/home.dart';
import 'package:aula_novos_talentos/pages/login.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  AppRoutes.loginScreen: (context) => Login(),
  AppRoutes.homeScreen: (context) => Home(),
};

class AppRoutes {
  static final String loginScreen = "/";
  static final String homeScreen = "/home";
}
