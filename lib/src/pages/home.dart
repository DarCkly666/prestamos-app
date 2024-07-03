import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prestamos/src/services/data_service.dart';
import 'package:prestamos/src/utils/constants.dart';

import 'package:prestamos/firebase_options.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    fetchPrestamos();
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
