import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Flutter'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Container'),
            subtitle: const Text('Contenedor lo mas parecido a una caja'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/container');
            },
          ),
          ListTile(
            title: const Text('Expanded'),
            subtitle: const Text(
                'Contenedor que tiene la capacidad de tomar el espacio disponible sin usar en pantalla'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/expanded');
            },
          ),
          ListTile(
            title: const Text('Column'),
            subtitle: const Text(
                'Widget que apila sus widgets hijos de forma vertical'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/column');
            },
          ),
          ListTile(
            title: const Text('Row'),
            subtitle: const Text(
                'Se utiliza para colocar widgets de forma horizontal'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/rows');
            },
          ),
          ListTile(
            title: const Text('ClipRRect'),
            subtitle: const Text(
                'Sirve para dar border contorneados'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/cliprrect');
            },
          ),
           ListTile(
            title: const Text('Image Asset'),
            subtitle: const Text(
                'Nos permite cargar una imagen desde el directorio de nuestra aplicación'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/imageasset');
            },
          ),
           ListTile(
            title: const Text('Grid View'),
            subtitle: const Text(
                'Nos permite mostrar elementos en una cuadricula'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.of(context).pushNamed('/gridview');
            },
          ),
        ],
      ),
    );
  }
}
