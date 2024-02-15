import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: ListView(
          // Controlamos la animacion o efecto del scroll
          physics: const BouncingScrollPhysics(),
          // Indicamos la direccion del scroll
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 100,
              height: 200,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 250,
              color: Colors.teal,
            ),
            Container(
              width: 100,
              height: 300,
              color: Colors.purple,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blueAccent,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 250,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.grey,
            )
          ],
        ));
  }
}
