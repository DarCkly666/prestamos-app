import 'package:flutter/material.dart';
import 'package:prestamos/src/components/add_new_item.dart';

class AddNew extends StatelessWidget {
  const AddNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const AddNewItem();
        },
        itemCount: 2,
      ),
    );
  }
}
