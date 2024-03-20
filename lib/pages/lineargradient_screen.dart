import 'package:flutter/material.dart';

class LinearGradientScreen extends StatelessWidget {
  const LinearGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Linear Gradient'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Al indicar los colores y la propiedad stops con valores double del 0 al 1
              // Indicaremos el area que abarcara cada uno de nuestros colores
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.blue,
                    Colors.lightGreen,
                    Colors.purple
                  ],
                  stops: [0.20, 0.50, 0.75, 0.85],
                  // Indicamos la orientacion de nuestro degradado
                  // Inidiando desde arriba izquierdo hacia abajo derecho
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
              ), 
              const SizedBox(height: 20,),
              // Al no definir la propiedad stops, se reparten los colores proporcionalmente
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                  colors: [
                    Colors.greenAccent,
                    Colors.blueAccent,
                    Colors.pinkAccent,
                    Colors.purpleAccent,
                    Colors.cyanAccent
                  ],
                  // Indicamos la orientacion de nuestro degradado
                  // Inidiando desde arriba centro hacia abajo centro
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
              ), 
            ],
          ),
        ));
  }
}
