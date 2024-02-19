import 'package:flutter/material.dart';

class ImageAssetScreen extends StatelessWidget {
  const ImageAssetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ClipRRect'),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Center(
          child: Container(
            // Creamos un contenedor 
            //que tendra nuestra imagen
            width: 400,
            height: 400,
            color: Colors.black,
            child: Image.asset(
              // Indicamos la ruta de uestra imagen
              // Partiendo desde el directorio raiz
              'assets/img/cat.jpg',
              // Cambiando la propiedad fit, podemos cambiar el aspecto de la imagen
              // respecto a su contenedor
              fit: BoxFit.fitWidth,
            ),
          ),
        ));
  }
}
