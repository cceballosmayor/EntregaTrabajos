import 'package:app_universidad_trabajo_unidad2/widgets/pie.dart';
import 'package:flutter/material.dart';
import 'package:app_universidad_trabajo_unidad2/widgets/cabecera.dart';

class NoticiaScreen extends StatelessWidget {
  const NoticiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: [
          const Cabecera(),
          Column(children: [
            const Image(
                image: NetworkImage(
                    'https://conservatorio.umayor.cl/images/eventos/Conservatorio-admision-2023_2022-09-15-171634_wyim.jpg')),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Column(
                children: [
                  Text('Noticia',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text(
                      'A partir del 28 de septiembre comenzará el periodo para poder inscribirse para ser parte de la Admisión 2023 del Conservatorio de Música de la Universidad Mayor. Nuestro proceso está dirigido a jóvenes con vocación artística en diferentes áreas de interés musical tales como Piano, Violín, Viola, Fagot, Clarinete, Oboe, Tuba, Trombón, Trompeta, Percusión, Contrabajo, Violoncello, Corno, Flauta y para poder postular, deben saber lo siguiente:'),
                  Text('Realizaremos audiciones 100% online',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ]),
          const Pie()
        ]),
      ),
    );
  }
}
