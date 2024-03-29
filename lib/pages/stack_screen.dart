import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            // Indicamos la alineacion que tendran, 
            // respecto al contenedor, cada uno de los hijos
            alignment: AlignmentDirectional.center,
            children: [
              // Contenedor que se visualizara mas atras
              Container(
                width: 300,
                height: 300,
                color:  Colors.green[600],
              ),
              Container(
                width: 200,
                height: 200,
                color:  Colors.green[400]
              ),
              Container(
                width: 100,
                height: 100,
                color:  Colors.green[200],
              )
              // Contenedor que se visualizara mas enfrente
            ]
          ),
        ));
  }
}
