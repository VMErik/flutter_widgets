import 'package:flutter/material.dart';

class ScrollBarScreen extends StatelessWidget {
  const ScrollBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scroll Bar'),
        ),
        body: Center(
          child: Scrollbar(
            // Indicamos que siempre se muestre, tanto e thumb (que es donde nos encontramos)
            // Como el track, que es el espacio disponible
            thumbVisibility: true,
            trackVisibility: true,
            // Indicamos el ancho de la barra
            thickness: 15,
            // Especificamos en true, para que al dar clic en la barra se mueva nuestro control
            interactive: true,
            child: ListView.builder(
              itemCount: 400,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Elemento $index',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
