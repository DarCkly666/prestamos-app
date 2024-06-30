import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prestamos/src/pages/add_new.dart';
import 'package:prestamos/src/pages/home.dart';

Map<String, WidgetBuilder> routes(BuildContext context) {
  return {
    '/': (context) => const Home(),
    '/add': (context) => const AddNew(),
  };
}
