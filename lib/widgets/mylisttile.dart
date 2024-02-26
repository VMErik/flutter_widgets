import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {


  final String name;
  final String description;
  final String route;


  const MyListTile({super.key, required this.name, required this.description, required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
              title:  Text(name),
              subtitle:  Text(description),
              trailing:  const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.of(context).pushNamed('/$route');
              },
            ),
    );
  }
}