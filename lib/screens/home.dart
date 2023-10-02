import 'package:app_universidad_trabajo_unidad2/widgets/pie.dart';
import 'package:app_universidad_trabajo_unidad2/widgets/cabecera.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
          children: [
            const Cabecera(),
            Container(
              color: const Color.fromRGBO(238, 238, 238, 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://conservatorio.umayor.cl/images/mariateresasepulveda.png'),
                  ),
                  Text(
                    '"Buscamos seguir construyendo un centro de excelencia educativa, fomentando el valor único de las artes en nuestro entorno".',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromRGBO(238, 238, 238, 10),
                alignment: Alignment.center,
                child: const Row(
                  children: [],
                )),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              color: const Color.fromRGBO(254, 218, 63, 10),
              child: const Column(children: [
                Text('Violin',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text('Viola', style: TextStyle(fontSize: 16)),
                Text('Violoncello', style: TextStyle(fontSize: 16)),
              ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Noticias',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          'https://conservatorio.umayor.cl/images/eventos/Conservatorio-admision-2023_2022-09-15-171634_wyim.jpg'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('10/09 | 2022',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          const Text('Conservatorio lanza su Admisión 2023',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: () {
                              Navigator.pushNamed(context, 'noticia');
                            },
                            child: const Text('Ver más'),
                          )
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          'https://conservatorio.umayor.cl/images/eventos/00-conservatorioppal.png'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('20/04 | 2022',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          const Text(
                              'Intérpretes en clarinete y fagot inauguraron la nueva edición de la Temporada Internacional U. Mayor',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: () {
                              Navigator.pushNamed(context, 'noticia');
                            },
                            child: const Text('Ver más'),
                          )
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          'https://conservatorio.umayor.cl/images/eventos/Foto-NotaDM.jpg'),
                      fit: BoxFit.cover,
                    )),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('20/04 | 2022',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          Text(
                              'Violinista polaca hizo su debut en Latinoamérica en la Temporada Internacional U. Mayor',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ],
              ),
            ),
            const Pie()
          ],
        )));
  }
}
