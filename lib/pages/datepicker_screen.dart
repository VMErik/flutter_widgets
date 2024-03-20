import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  // Variable para nuestra fecha
  DateTime _selectedDate = DateTime.now();

  void _showDatePicker() {
    // Mostramos el date picker
    showDatePicker(
            context: context,
            // Establecemos fecha de inicio, año inicial y año final que podremos elegir
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
          // Asignamos la fecha a nuestra variable y notificamos el cambio
          setState(() {
            _selectedDate = value!;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Date Picker'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(_selectedDate.toString(),
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
              MaterialButton(
                color: Colors.black,
                onPressed: _showDatePicker,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Selecciona una fecha',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
