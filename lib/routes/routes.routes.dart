import 'package:flutter/material.dart';
import 'package:list_of_companies/pages/pages.dart';
import 'package:list_of_companies/routes/routes.dart';

Map<String, WidgetBuilder> routes() {
  Map<String, WidgetBuilder> routes = {
    Routes.initialPage: (context) => const InitialPage(),
  };

  return routes;
}
