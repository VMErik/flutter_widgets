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
      body: ListView(
        children: const [
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
            description: "Widget que apila sus widgets hijos de forma vertical",
            route: "column",
          ),
          MyListTile(
            name: "Row",
            description: "Se utiliza para colocar widgets de forma horizontal",
            route: "rows",
          ),
          MyListTile(
            name: "ClipRRect",
            description: "Sirve para dar border contorneados",
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
            description: "Nos permite mostrar elementos en una cuadricula",
            route: "gridview",
          ),
          MyListTile(
            name: "Gesture Detector",
            description:
                "Permite controlar 'los eventos' que se realizan sobre pantalla, como doble tap, tap, scroll, etc.",
            route: "gesturedetector",
          ),
          MyListTile(
            name: "Bottom Nav Bar",
            description:
                "Nos permite visualizar en la parte inferior de la pantalla un menu de opciones para desplazarnos a traves de diferentes vistas",
            route: "bottomnavbar",
          ),
          MyListTile(
            name: "AppBar",
            description:
                "Widget colocado en la parte superior de la pantalla, normalmente utilizado para operaciones comunes, como acciones o menus",
            route: "appbar",
          ),
           MyListTile(
            name: "Drawer",
            description:
                "Muestra un menu lateral el cual esta asociado con nuestro Appbar",
            route: "drawer",
          ),
           MyListTile(
            name: "SliverAppBar",
            description:
                "Una forma mas elegante de mostrar un AppBar con una animacion al hacer scroll",
            route: "sliverapp",
          ),
            MyListTile(
            name: "TabBar",
            description:
                "Nos permite agrupar en pestañas o tabs contenido dentro de nuestra screen",
            route: "tabbar",
          ),
          MyListTile(
            name: "AnimatedContainer",
            description:
                "Nos permite crear contenedores de la forma tradicional pero con la peculiaridad de cambiar propiedades y animar estos cambios mediante transiciones",
            route: "animatedcontainer",
          ),
        ],
      ),
    );
  }
}
