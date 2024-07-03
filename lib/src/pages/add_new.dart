import 'package:flutter/material.dart';
import 'package:prestamos/src/components/add_new_item.dart';

class AddNew extends StatelessWidget {
  AddNew({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New"),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [AddNewItem(formKey: _formKey)],
            ),
          )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Guardando datos...')));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Por favor, corrija los errores')));
            }
          },
          label: const Text('Guardar'),
          icon: const Icon(Icons.save)),
    );
  }
}
