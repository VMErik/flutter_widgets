import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Widgets Flutter'),
      ),
      body: Column(
        children: [
          ListTile(
            title:  const Text('Container'),
            subtitle: const Text('Contenedor lo mas parecido a una caja'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Navigator.of(context).pushNamed('/container');
            },
          ), 
          ListTile(
            title:  const Text('Expanded'),
            subtitle: const Text('Contenedor que tiene la capacidad de tomar el espacio disponible sin usar en pantalla'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Navigator.of(context).pushNamed('/expanded');
            },
          ), 
        ],
      ),
    );
  }
}