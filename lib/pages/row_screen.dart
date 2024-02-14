import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Row'),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Row(
          // Alineamos todos los hijos al centro de la nueva fila
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.pink,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.indigo,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.teal,
            )
          ],
        ));
  }
}
