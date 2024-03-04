import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
        // Creamos nuestro alertdialog
        // Podemos personalizarlo cmo gustemos, cambiar colores, fuentes, etc..
          return AlertDialog(
            backgroundColor: Colors.blueAccent,
            title: const Text('Encabezado'),
            content: const Text(
                'Aqui podemos poner cualquier tipo de contenido, widget, etc..'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: const Text('OK'),
              ),
              MaterialButton(
                onPressed: () {
                  // Hacemos que cierre la ventana emergente
                  Navigator.pop(context);
                },
                child: const Text('Cancelar'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blueAccent,
          // Al dar clic mandamos a llamar a nuestra funcion que mostrara el Alert
          onPressed: _showDialog,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mostrar mensaje',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
