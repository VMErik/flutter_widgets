import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Padding'),
        ),
        body: Center(
          child: Padding(
            // Especificamos el relleno que queremos que se ponga 
            // incluso podemos personalizarlo mas especifico
            padding: const EdgeInsets.only(top: 80, left: 80, bottom: 40 , right: 10),
            child: Container(
              color: Colors.amber
            ),
          ),
        ),
      );
  }
}
