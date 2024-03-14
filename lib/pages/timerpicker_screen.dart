import 'package:flutter/material.dart';

class TimerPickerScreen extends StatefulWidget {
  const TimerPickerScreen({super.key});

  @override
  State<TimerPickerScreen> createState() => _TimerPickerScreenState();
}

class _TimerPickerScreenState extends State<TimerPickerScreen> {
  // Variable para mostrar el tiempo en pantalla
  TimeOfDay _selectedTime = TimeOfDay.now();

  // Funcion que mostrara el picker, y con el .then accederemos a la hora seleccionada
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: _selectedTime).then((value) {
      // Con el setstate notificaremos el cambio s
      setState(() {
        _selectedTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Timer Picker'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(_selectedTime.format(context).toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold)),
              MaterialButton(
                color: Colors.black,
                onPressed: _showTimePicker,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Selecciona una hora',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
