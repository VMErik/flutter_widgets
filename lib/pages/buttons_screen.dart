import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.tonal(
                  onPressed: () {}, child: const Text('Filled Tonal')),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              TextButton(onPressed: () {}, child: const Text('Text Button')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                  label: const Text('Compartir')),
            ],
          ),
        ));
  }
}
