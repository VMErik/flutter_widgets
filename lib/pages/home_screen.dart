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
          ListTile(
            title:  const Text('Column'),
            subtitle: const Text('Widget que apila sus widgets hijos de forma vertical'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Navigator.of(context).pushNamed('/column');
            },
          ), 
          ListTile(
            title:  const Text('Row'),
            subtitle: const Text('Se utiliza para colocar widgets de forma horizontal'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Navigator.of(context).pushNamed('/rows');
            },
          ), 
           ListTile(
            title:  const Text('List View'),
            subtitle: const Text('Es una lista que permite scroll de widgets alineados de forma vertical'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Navigator.of(context).pushNamed('/listview');
            },
          ), 
        ],
      ),
    );
  }
}