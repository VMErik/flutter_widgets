import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('RichText'),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                  text:
                      const TextSpan(style: TextStyle(fontSize: 40), children: [
                TextSpan(text: 'Hola este es un mensaje '),
                TextSpan(
                    text: 'en negritas ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'que tambien puede tener un color',
                    style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: ' e incluso tamaño distinto.',
                    style:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 15)),
                TextSpan(
                    text:
                        'Todo como si fuera un mismo texto y sin desbordamiento.'),
              ]))),
        ));
  }
}
