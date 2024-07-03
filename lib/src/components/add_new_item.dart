import 'package:flutter/material.dart';

class AddNewItem extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const AddNewItem({super.key, required this.formKey});

  @override
  State<AddNewItem> createState() => _AddNewItemState();
}

class _AddNewItemState extends State<AddNewItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Producto'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese un producto';
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        SizedBox(
          width: 100.0,
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Precio'),
            keyboardType: TextInputType.number,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese un precio válido.';
              }
              return null;
            },
          ),
        )
      ],
    );
  }
}
