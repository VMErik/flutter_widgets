import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: [
          // Encabezado
          SliverAppBar(
            // Establecemos el color que tendra al quedar posicionado en la parte superior
            backgroundColor: Colors.black,
            leading: const Icon(Icons.menu),
            // Establecemos el tamaño de alto que medira nuestro appbar al entrar a esta pantalla
            expandedHeight: 200,
            // Indicamos que al quedar fuera de la vista, nuestro appbar debe de quedarse
            // visible en la parte superior
            pinned: true,
            // Con esta propiedad, indicamos el contenido de la parte "flexible" de nuestro widget
            flexibleSpace: FlexibleSpaceBar(
              // Establecemos unaimagen de fondo con un texto
              background: Image.asset(
                './assets/img/background.jpg',
                fit: BoxFit.cover,
              ),
              title: const Text('Sliver AppBar'),
            ),
          ),

          // Declaramos nuestros items
            SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 400,
                color: Colors.black,
                child: const Center(
                    child: Text('Elemento 1',
                        style: TextStyle(color: Colors.white, fontSize: 25))),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 400,
                color: Colors.black,
                child: const Center(
                    child: Text('Elemento 2',
                        style: TextStyle(color: Colors.white, fontSize: 25))),
              ),
            ),
          ),
   SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 400,
                color: Colors.black,
                child: const Center(
                    child: Text('Elemento 3',
                        style: TextStyle(color: Colors.white, fontSize: 25))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
