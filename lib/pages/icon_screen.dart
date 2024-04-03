import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Podemos aplicar a nuestros iconos un efecto de sombra
              Icon(
                Icons.access_alarm_rounded, //
                color: Colors.blueAccent,
                size: 100,
                shadows: [
                  BoxShadow(
                    color: Colors.black, 
                    offset: Offset(5, 5),
                    spreadRadius: 20, 
                    blurRadius: 40
                  )
                ],
              ), //
              // Haciendo referencia a la clase Icons, tendremos acceso al catalogo que flutter ofrece
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.forward_10_rounded,
                    color: Colors.red,
                    size: 60,
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    color: Colors.blueAccent,
                    size: 60,
                  ),
                  Icon(
                    Icons.skip_next_rounded,
                    color: Colors.green,
                    size: 60,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
