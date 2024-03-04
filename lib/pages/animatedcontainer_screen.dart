
import 'package:flutter/material.dart';

// Haremos uso de stateful widget, para notifcar cambios de estados
class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  // Variables para controlar el color y tamaño de neustro contenedor
  Color backgrounColor = Colors.black;
  double myWidth = 150;
  double myHeight = 150;
  //  Funcion que cambiara lost colores de nuestro contenedor
  void toggleColor() {
    setState(() {
      backgrounColor =
          backgrounColor == Colors.black ? Colors.red : Colors.black;
    });
  }
  //  Funcion que cambiara lso tamaños de nuestro contenedor
   void changeSize() {
    setState(() {
      myWidth = myWidth == 150 ? 300 : 150;
      myHeight = myHeight == 150 ? 300 : 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    // Al hacer clic en este container, haremos el cambio del color
                    onTap: toggleColor,
                    child: Container(
                      color: Colors.black,
                      width: 100,
                      height: 50,
                      child: const Center(
                          child: Text(
                        'Cambiar Color',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  GestureDetector(
                    // Al hacer clic en este container, haremos el cambio del tamaño
                    onTap: changeSize,
                    child: Container(
                      color: Colors.black,
                      width: 100,
                      height: 50,
                      child: const Center(
                          child: Text(
                        'Cambiar Tamaño',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  )
                ]),
          ),
          // Envolvemos nuestro Container en un expanded para que abarque el tamaño completo de la pantalla
          // y en un center para que lo centre 
          Expanded(
            child: Center(
              // Creamos nuestro animated container y especificamos que la duracion 
              // de cualquier cambio de propiedad durara un segundo
              child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  // Establecemos las propiedades de color y tamaño las tome de nuestras variables
                  color: backgrounColor,
                  width: myWidth,
                  height: myHeight),
            ),
          )
        ],
      ),
    );
  }
}
