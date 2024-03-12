import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Slider'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Califica en una escala del 1 al 10 nuestro servicio',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            Text(currentValue.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            Slider(
                // Definimos nuestros rangos
                min: 0,
                max: 10,
                // En cuantos "pasos" se dividira nuestro rango
                divisions: 10,
                // Establecemos colores
                activeColor: Colors.green[800],
                inactiveColor: Colors.grey[700],
                value: currentValue,
                // Cada que el valor cambie, actualizaremos nuestra vairable
                onChanged: (value) {
                  setState(() {
                    currentValue = value;
                  });
                })
          ],
        ));
  }
}
