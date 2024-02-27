import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Indicamos el titulo que queremos que aparezca en nuestro appbar
        title: const Text('DRAWER'),
        backgroundColor: Colors.red[600],
      ),
      // Creamos nuestro drawer
      drawer: Drawer(
        backgroundColor: Colors.red[400],
        child: ListView(
          children: [
            // Indicamos el encabezado del menu, el cual bien se puede utilizar con una imagen
            const DrawerHeader(
                child: Center(
              child: Text(
                'L O G O',
                style: TextStyle(fontSize: 30),
              ),
            )),
            // Declaramos nuestras opciones del menu
            ListTile(
              leading: const Icon(Icons.settings),
              title:
                  const Text('Configuraciones', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Al dar clic en la opcion, indicamos a que pagina debe de dirigirse
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PrimeraPagina(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Perfil', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Al dar clic en la opcion, indicamos a que pagina debe de dirigirse
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SegundaPagina(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}

// Creamos unas paginas que solo contendran un texto de forma centrada
// para poder simular la funcinalidad
class PrimeraPagina extends StatelessWidget {
  const PrimeraPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'CONFIGURACIONES',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ));
  }
}

// Creamos unas paginas que solo contendran un texto de forma centrada
// para poder simular la funcinalidad
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent.shade700,
        body: const Center(
          child: Text(
            'PERFIL',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ));
  }
}
