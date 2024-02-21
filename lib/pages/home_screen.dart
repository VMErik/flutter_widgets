import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/widgets/mylisttile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Flutter'),
      ),
      body: const Column(
        children: [
          MyListTile(
            name: "Container",
            description: "Contenedor lo mas parecido a una caja",
            route: "container",
          ),
          MyListTile(
            name: "Expanded",
            description:
                "Contenedor que tiene la capacidad de tomar el espacio disponible sin usar en pantalla",
            route: "expanded",
          ),
          MyListTile(
            name: "Column",
            description:
                "Widget que apila sus widgets hijos de forma vertical",
            route: "column",
          ),
          MyListTile(
            name: "Row",
            description:
                "Se utiliza para colocar widgets de forma horizontal",
            route: "rows",
          ),
           MyListTile(
            name: "ClipRRect",
            description:
                "Sirve para dar border contorneados",
            route: "cliprrect",
          ),
           MyListTile(
            name: "Image Asset",
            description:
                "Nos permite cargar una imagen desde el directorio de nuestra aplicación",
            route: "imageasset",
          ),
           MyListTile(
            name: "Grid View",
            description:
                "Nos permite mostrar elementos en una cuadricula",
            route: "gridview",
          ),
           MyListTile(
            name: "Gesture Detector",
            description:
                "Permite contrlar 'los eventos' que se realizan sobre pantalla, como doble tap, tap, scroll, etc.",
            route: "gesturedetector",
          ),
        ],
      ),
    );
  }
}
