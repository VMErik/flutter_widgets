import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Indicamos el color
        backgroundColor: Colors.deepOrange,
        // Cordenada en el eje Z, para indicar el efecto de profundidad que se est
        // dara respecto a los demas widgets
        elevation: 9,
        // Indicamos el titulo que queremos que aparezca en nuestro appbar
        title: const Text('A P P  B A R'),
        // Customizammos el lado izquierdo de la barra
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        // Customizamos el lado derecho de la barra
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
        ],
      ),
    );
  }
}
