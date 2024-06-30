import 'package:flutter/material.dart';
import 'package:prestamos/src/utils/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Constants.appName),
        ),
        body: const Center(
          child: Text('¡Hola, Twice!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add');
          },
          child: const Icon(Icons.add),
        ));
  }
}
