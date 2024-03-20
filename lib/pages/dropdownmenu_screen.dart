import 'package:flutter/material.dart';

class DropDownMenuScreen extends StatefulWidget {
  const DropDownMenuScreen({super.key});

  @override
  State<DropDownMenuScreen> createState() => _DropDownMenuScreenState();
}

class _DropDownMenuScreenState extends State<DropDownMenuScreen> {
  Color selectedColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Menu'),
      ),
      backgroundColor: selectedColor,
      body: Center(
        child: DropdownMenu(
          // Indicamos el texto que queremos que se muestre en neustro control
          label: const Text('Selecciona uno'),
          width: 300,
          // Al hacer cambio de la seleccion, cambiaremos nuestra vairbale de color para cambiar el fondo del sccaffold
          onSelected: (color) {
            if (color != null) {
              setState(() {
                selectedColor = color;
              });
            }
          },
          // Declararaemos nuestras opciones de nuestro DropDown
          // El atributo value, es la data que queremos manejar y el label, el texto que queremos mostrar
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: Colors.blue, label: 'Azul'),
            DropdownMenuEntry(value: Colors.yellow, label: 'Amarillo'),
            DropdownMenuEntry(value: Colors.purple, label: 'Morado'),
            DropdownMenuEntry(value: Colors.green, label: 'Verde'),
            DropdownMenuEntry(value: Colors.orange, label: 'Anaranjado'),
          ],
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
