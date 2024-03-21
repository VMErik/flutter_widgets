import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wrap'),
        ),
        body: Center(
            child: Wrap(
          // Indicamos como queremos que se acomoden los childs
          alignment: WrapAlignment.start,
          // Indicamos el espacio horizontal que queremos que exista entre elementos
          spacing: 25,
          // Indicamos el espacio vertical que queremos que exista entre elementos
          runSpacing: 25,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.purpleAccent,
            ),
             Container(
              width: 200,
              height: 200,
              color: Colors.purpleAccent,
            ),
             Container(
              width: 200,
              height: 200,
              color: Colors.purpleAccent,
            ),
             Container(
              width: 200,
              height: 200,
              color: Colors.purpleAccent,
            ),
             Container(
              width: 200,
              height: 200,
              color: Colors.purpleAccent,
            ),
          ],
        )));
  }
}
