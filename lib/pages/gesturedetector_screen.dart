import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});
  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  int contador = 0;
  incrementarContador() {
    // Actualizamos el contador, mediante el setState, el cual se encargara
    // De redibujar nuestra pantalla, tomando el nuevo valor de contador
    setState(() {
      contador++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gesture Detector'),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Tomara el valor de nuestro contador y lo concatenara al texto
            Text(
              'Se han dado ${contador.toString()} taps',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            GestureDetector(
              // Controlaremos cuando el usuario haga tap sobre el container
              onTap: () {
                // Mandamos a llamar a nuestra funcion
                incrementarContador();
              },
              child: Container(
                  color: Colors.black,
                  child: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text(
                      'Tap para Sumar 1',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        )));
  }
}
