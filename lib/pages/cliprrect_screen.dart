import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ClipRRect'),
        ),
        body: Center(
          child: ClipRRect(
            // Asignamos un borde de tipo circular (redondeado)
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.teal
            ),
          ),
        ));
  }
}
