import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: Center(
        child: GestureDetector(
              // Al dar tap, navegaremos a nuestra segunda pantalla
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HeroDetail()));
              },
              // Creamos nuestro Hero, y le asignamos un tag 
              // (el cual debe de ser igual en la segunda pantalla)
              child: Hero(
                tag: 'cat-img',
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('./assets/img/cat.jpg'),
                ),
              ),
            )
      ),
    );
  }
}

class HeroDetail extends StatelessWidget {
  const HeroDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Detail'),
      ),
      body: Column(
        children: [
          // Dentro de neustro Hero, envolvemos nuestra imagen como en la primer pantalla
          // Y etiquetamos con el mismo tag
          Hero(
            tag: 'cat-img',
            child: SizedBox(
              width: 400,
              height: 400,
              child: Image.asset('./assets/img/cat.jpg'),
            ),
          ),
          // Creamos contenido descriptivo
          const Text(
            'GATO',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
                'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  
                ),),
          )
        ],
      ),
    );
  }
}
