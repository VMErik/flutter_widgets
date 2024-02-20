import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: GridView.builder(
          // Indicamos el efecto que tendra al hacer scroll
          physics: const BouncingScrollPhysics(),
          // Indicamos cuantos items tendra nuestro grid
            itemCount: 70,
            // Indicamos el layout de nuestro grid, indicando que queremos
            // que tenga cuatro columnas
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              // Por cada ciclo querecorre, creamos un widget
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: Center(
                    child: Text('Elemento ${index + 1}'),
                  ),
                ),
              );
            }));
  }
}
