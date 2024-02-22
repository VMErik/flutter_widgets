import 'package:flutter/material.dart';
// Trabajaremos con un StatefulWidget
class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});
  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  // Variable auxilliar para saber que indice esta seleccionado
  int _selectedIndex = 0;
  // Lista de paginas que contendra los widgtets que mostraremos en el body
  List<Widget> pages = const [
    // Hacemos referencia a nuestros widgets
    MyHomePage(),
    SettingsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      // Dentro del body del scaffol mostraremos nuestro primer widget, mandando el indice de la variable auxiliar
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // El curren index lo relacionaremos con nuestra vatriable
        currentIndex: _selectedIndex,
        // Cada que el usuari de tap enuna opcion, cambiaremos el valor de nuestra variable, lo que 
        // notificara a la vista redibujando el widget del body
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        // Declararemos los items dentro de nuetro nav bar
        // Es importante que por lo menos existan dos elementos en esta lista
        // La propiedad label, es lo que visualizaremos como texto debajo del icono
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Configuraciones'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Perfil'),
        ],
      ),
    );
  }
}

// Widget que se cargara cuando este seleccionado el primer indice
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Page', style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )));
  }
}

// Widget que se cargara cuando este seleccionado el segundo indice

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text('Settings Page', style: TextStyle(
      color:  Colors.blue[600],
        fontSize: 30,
        fontWeight: FontWeight.bold
      )));
  }
}

// Widget que se cargara cuando este seleccionado el tercer indice

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text('Profile Page', style: TextStyle(
      color:  Colors.green[600],
        fontSize: 30,
        fontWeight: FontWeight.bold
      )));
  }
}
