import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Column(
          children: [
            // Creamos un contenedor de forma tradicional
            Container(height: 100, color: Colors.yellow),
            // Creamos un expanded, para que tome el tamaño
            // total restante de la pantalla
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            // Como se encuentran dos expandend, el espacio
            // restante se dividira entre estos dos elementos
            Expanded(
                child: Container(
              color: Colors.purple,
            )),
          ],
        ));
  }
}
