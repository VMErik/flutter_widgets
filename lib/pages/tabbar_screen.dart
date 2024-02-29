import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Envolvemos a nuestro scaffol en un DefaultTabController y le indicamos que tendra 3 tabs
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // Indicamos el color
          backgroundColor: Colors.deepOrange,
          elevation: 9,
          title: const Text('T A B  B A R'),
        ),
        // Ocupamos el column para posicionar el tabbar en la parte superior y el visor en laparte inferior
        body: Column(
          children: [
            // Definimos nuestro tabbar e indicamos los tabs que va a tener, en este caso 3
            const TabBar(
              indicatorColor: Colors.deepOrange,
              tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.deepOrange),
                
              ),
              Tab(
                icon: Icon(Icons.settings, color: Colors.deepOrange),
              ),
              Tab(
                icon: Icon(Icons.people, color: Colors.deepOrange),
              )
            ]),
            // Con expande, hacemos que el visor abarque todo el espacio restante
            Expanded(
              // Damos de alta nuestro "visor" de nuestros tabs
              child: TabBarView(
                // Indicamos lo que se visualizara en nuestros tabs
                // Es importante que el contenido coindida con el orden que declaramos en nuestros tabs
                // Pues el controlador lo visualizara de esa forma, 
                // al seleccionar el primer tab, visualizara el primer childen del tabbarview y asi con los demas tabs
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: Text('Inicio', style: TextStyle(fontSize: 40),),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    child: const Center(
                      child: Text('Settings', style: TextStyle(fontSize: 40),),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade400,
                    child: const Center(
                      child: Text('Perfil', style: TextStyle(fontSize: 40),),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
