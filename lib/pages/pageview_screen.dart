import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
// Creamos nuestro controlador para el page view
final _controller = PageController();

  PageViewScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
      ),
      body: PageView(
        // Asociaremos con nuestro controlador declarado en la parte superior
        controller:_controller ,
        // Podemos cambiar la direccion del scroll con la propiedad scrollDirection
        scrollDirection: Axis.horizontal,
        children: const [
          // Crearemos cuatro Screens, reutilizando nuestro widget MyScreen
            MyScreen(color: Colors.greenAccent,texto: 'Primer Pagina'),
            MyScreen(color: Colors.purpleAccent,texto: 'Segunda Pagina'),
            MyScreen(color: Colors.blueAccent , texto: 'Tercera Pagina'),
            MyScreen(color: Colors.yellowAccent,texto: 'Cuarta Pagina'),
        ],
      )
    );
  }
}

// Creamos un widget reutiliable que utilizaremos para mostrar como pantallas
class MyScreen extends StatelessWidget {

  final Color color;
  final String texto;

  const MyScreen({super.key, required this.color, required this.texto});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: color,
      body: Center(
        child: Text(texto,  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
    );
  }
}