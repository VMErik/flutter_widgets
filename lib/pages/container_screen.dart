import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {

  static const String name ='container_page';
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
        ),
        body: Center(
          child: Container(
            // Posicionamos al hijo en el centro
            alignment: Alignment.center,
            // Establecemos tamañs
            width: 400,
            height: 300,
            // Cambiamos la apariencia del contenedor
            decoration: BoxDecoration(
              // Añadimos border redondeados y establecemos un color
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            // Indicamos el widget hijo de nuestro cntenedor
            child : const Text('Hola, soy un contenedor'),
          ),
        )
    );
  }
}