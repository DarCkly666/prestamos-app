import 'package:flutter/material.dart';
import 'package:prestamos/src/components/bottom_sheet_add.dart';
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
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const SizedBox(
                        child: BottomSheetAdd(),
                      ));
                },
                isDismissible: false,
                enableDrag: false,
                isScrollControlled: true);
          },
          child: const Icon(Icons.add),
        ));
  }
}
