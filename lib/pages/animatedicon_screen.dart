import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({super.key});

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>
    with SingleTickerProviderStateMixin {

  // Controlador para nuestro widget AnimatedIcon
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  // Variable y funcion para verificar que accion ejecutar con nuestro icono
  bool isHome = false;
  void _isInHome() {
    if (isHome) {
      animationController.forward();
      isHome = false;
    } else {
      animationController.reverse();
      isHome = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Icon'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: _isInHome,
            
            child: AnimatedIcon(
              size: 150,
              color: Colors.blue[800],
              icon: AnimatedIcons.home_menu,
              progress: animationController,
            ),
          ),
        ));
  }
}
