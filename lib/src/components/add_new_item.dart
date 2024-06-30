import 'package:flutter/material.dart';

class AddNewItem extends StatelessWidget {
  const AddNewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.redAccent,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Producto'),
          ),
          SizedBox(
            width: 100.0,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Precio'),
            ),
          )
        ],
      ),
    );
  }
}
