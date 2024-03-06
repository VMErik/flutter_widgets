import 'package:flutter/material.dart';

class TextStyleScreen extends StatelessWidget {
  const TextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Este es un texto en negritas y en Italic',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('Este es un texto normal y con un ancho de fuente de w500',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal)),
                Text('Este es un texto normal con espaciado entre sus letras',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 4,
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal)),
              ],
            ),
          ),
        ));
  }
}
