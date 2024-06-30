import 'package:flutter/material.dart';

class BottomSheetAdd extends StatefulWidget {
  const BottomSheetAdd({super.key});

  @override
  State<BottomSheetAdd> createState() => _BottomSheetAddState();
}

class _BottomSheetAddState extends State<BottomSheetAdd> {
  bool loading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Agregar préstamo',
              style: TextStyle(
                  fontSize: 24, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 32,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Monto',
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton.icon(
              onPressed: loading
                  ? null
                  : () {
                      setState(() {
                        loading = true;
                      });
                      Navigator.pop(context);
                    },
              label: const Text('Agregar'),
              icon: const Icon(Icons.save),
            )
          ],
        ),
      ),
    );
  }
}
