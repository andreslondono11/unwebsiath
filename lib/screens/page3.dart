import 'package:flutter/material.dart';
import 'package:unwebsiath/drawer/lateral.dart';
// import 'package:unwebsiath/screens/page4.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'MJskcDwzgx8',
    flags: const YoutubePlayerFlags(
      loop: true,
      autoPlay: false,
      mute: false,
      showLiveFullscreenButton: true,
      forceHD: true,
      controlsVisibleAtStart: true,
      useHybridComposition: true,
    ),
  );

  final YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'yN-msT9Jeec',
    flags: const YoutubePlayerFlags(
      loop: true,
      showLiveFullscreenButton: true,
      autoPlay: false,
      mute: false,
    ),
  );

  final YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'egGawvGw9xw',
    flags: const YoutubePlayerFlags(
      loop: true,
      autoPlay: false,
      mute: false,
      showLiveFullscreenButton: true,
      forceHD: true,
      controlsVisibleAtStart: true,
      useHybridComposition: true,
    ),
  );

  final YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: 'zF-CJlWofeA',
    flags: const YoutubePlayerFlags(
      loop: true,
      autoPlay: false,
      mute: false,
      showLiveFullscreenButton: true,
      forceHD: true,
      controlsVisibleAtStart: true,
      useHybridComposition: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xfff921b21),
            shadowColor: Colors.blueGrey,
            elevation: 10.2,
            title: const Text(
              'Bienestar',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          drawer: const DrawerWigdet(),
          body: ListView(
            children: [
              const SizedBox(
                child: Image(image: AssetImage('assets/images/bienestar.png')),
              ),
              const Divider(
                color: Color(0xfff921b21),
                endIndent: 50,
                thickness: 0.09,
                height: 10,
                indent: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 80, right: 80),
                child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 60,
                        ),
                        backgroundColor: const Color(0xfff921b21),
                        foregroundColor: Colors.white),
                    onPressed: () async {
                      final url = Uri.parse(
                          'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                        print('Cliked');
                      }
                    },
                    child: const Text('Accede Aqui',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              const Divider(
                color: Color(0xfff921b21),
                endIndent: 50,
                thickness: 0.09,
                height: 10,
                indent: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Conoce el programa de Alianzas y descuentos con más de 205 empresas en 14 categorías cómo educación, salud, cuidado personal, restaurantes, vehículos, entre otros...',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Para el personal del Ejército Nacional (activos, retirados y pensionados) y civil del MDN.',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Para disfrutar de los beneficios, presenta la cédula militar o fichero de la unidad. ',
                  style: TextStyle(fontWeight: FontWeight.w300))
              // YoutubePlayer(
              //   controller: _controller,
              //   showVideoProgressIndicator: true,
              //   bottomActions: [
              //     CurrentPosition(),
              //     ProgressBar(isExpanded: true),
              //   ],
              // ),
              // fuentes1(),
              // const SizedBox(
              //   height: 20,
              // ),
              // titulo1(),
              // const SizedBox(
              //   height: 20,
              // ),

              // titulo5(),

              // const SizedBox(
              //   height: 20,
              // ),
              // titulo2(),
              // const SizedBox(
              //   height: 20,
              // ),
              // contenido3(),
              // contenido4(),
              // const SizedBox(
              //   height: 10,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // titulo12(),
              // const SizedBox(
              //   height: 20,
              // ),
              // YoutubePlayer(
              //   controller: _controller3,
              //   showVideoProgressIndicator: true,
              //   bottomActions: [
              //     CurrentPosition(),
              //     ProgressBar(isExpanded: true),
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // titulo3(),
              // const SizedBox(
              //   height: 20,
              // ),

              // YoutubePlayer(
              //   controller: _controller1,
              //   showVideoProgressIndicator: true,
              //   bottomActions: [
              //     CurrentPosition(),
              //     ProgressBar(isExpanded: true),
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // titulo4(),
              // const SizedBox(
              //   height: 20,
              // ),
              // titulo10(),
              // const SizedBox(
              //   height: 20,
              // ),
              // co(),

              // const SizedBox(
              //   height: 20,
              // ),

              // titulo11(),
              // const SizedBox(
              //   height: 20,
              // ),
              // YoutubePlayer(
              //   controller: _controller2,
              //   showVideoProgressIndicator: true,
              //   bottomActions: [
              //     CurrentPosition(),
              //     ProgressBar(isExpanded: true),
              //   ],
              // ),
              // // fuentes2(),
            ],
          ),
        ));
  }
}

Widget imagen1() {
  return Container(
    child: Image.asset('assets/images/siweb.png'),
    color: const Color.fromARGB(255, 242, 129, 30),
  );
}

Widget fuentes1() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        'Fuente Tomada',
        style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        '"Uso Reglamento de Uniformes"',
        style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
      )
    ],
  );
}

Widget titulo1() {
  return (const Text(
    'NUESTROS SÍMBOLOS PATRIOS',
    style: TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

Widget titulo10() {
  return (const Text(
    'VALORES',
    style: TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

Widget titulo11() {
  return (const Text(
    'CODIGO DE HONOR DEL SOLDADO',
    style: TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

Widget titulo12() {
  return (const Text(
    'HIMNO AL EJERCITO',
    style: TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

Widget titulo2() {
  return (const Text(
    'NUESTROS SÍMBOLOS INSTITUCIONALES',
    style: TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

Widget contenido3() {
  return (Column(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: const Text(
          'Cuatro nuevas armas son los nuevos elementos con los que cuenta el escudo del Ejército Nacional. La iniciativa de cambiar y modernizar la heráldica de la Fuerza tuvo como punto de partida la necesidad de posicionar las armas más jóvenes de la Institución. La Infantería, la Caballería, la Artillería, los Ingenieros Militares, las Comunicaciones Militares, la Aviación del Ejército, la Inteligencia Militar, son parte de nuestro escudo.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
      ),
      const SizedBox(
        width: 200,
        child: Image(
          image: AssetImage('assets/images/escudoejc.png'),
        ),
      ),
    ],
  ));
}

Widget contenido4() {
  return (Row(
    children: <Widget>[
      const SizedBox(
        width: 200,
        // color: Colors.amber,
        child: Image(
          height: 200,
          image: AssetImage('assets/images/port.png'),
        ),
      ),
      Expanded(
          child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        //color: Colors.blueGrey,
        child: const Text(
          'Hacia el año de 1907, luego de la Reforma Militar, fue implementada la bandera del Ejército Nacional, insignia sublime de la Fuerza, cuyo color fue retomado del pabellón Nacional, siendo el rojo una representación de la sangre derramada por nuestros próceres y héroes a través de todos los tiempos. En el centro está impreso el escudo de armas de la Fuerza donde tienen representatividad cada una de las armas que hacen parte de la institución militar.',
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
      )),
    ],
  ));
}

Widget titulo3() {
  return (const Text(
    'ORACION PATRIA',
    style: TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

Widget titulo4() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30),
    child: (const Text(
      'Colombia, patria mía,te llevo con amor en mi corazón; Creo en tú destino y espero verte siempre grande, respetada y libre; en ti amo todo lo que me es querido: tu gloria, tu hermosura, mi hogar, las tumbas de mis mayores, mis creencias, el fruto de mis esfuerzos y la realización de mis sueños. Ser soldado tuyo es la mayor de mis glorias; mi ambición más grande es la de llevar con honor el título de colombiano  y, llegado el caso, ¡MORIR POR DEFENDERTE!',
      style: TextStyle(fontWeight: FontWeight.w300),
      textAlign: TextAlign.justify,
    )),
  );
}

// Widget fuentes2() {
//   return const Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         'Fuente Tomada',
//         style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
//       ),
//       SizedBox(
//         width: 10,
//       ),
//       Text(
//         '"Monseñor Pedro Pablo Galindo Méndez BG. Honorario "',
//         style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
//       ),
//       Text(
//         '" – Capellán General del Ejército Nacional"',
//         style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
//       )
//     ],
//   );
// }

Widget titulo5() {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30),
    child: (const Text(
      'Los símbolos nacionales o símbolos patrios son aquellos que representan a Estados, municipios, naciones y países, y así son reconocidos por otros Estados y países. Generalmente estos símbolos se formulan a partir de representaciones visuales o verbales que pretenden difundir los valores de la historia o de los personajes célebres del país.',
      style: TextStyle(fontWeight: FontWeight.w300),
      textAlign: TextAlign.justify,
    )),
  );
}

Widget co() {
  return Container(
    margin: const EdgeInsets.only(left: 30, right: 30),
    child: const Column(
      children: [
        Text(
          'RESPETO: mantendré profunda consideración por todas las personas, otorgando un alto valor a su dignidad; fomentaré el respeto propio, el respeto por mis compañeros, superiores, subalternos y por mi familia.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'HONESTIDAD: actuaré con decencia, decoro, compostura, honradez e integridad, de acuerdo con los mandatos de la conciencia.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'LEALTAD: mi acción será de fidelidad y lealtad para con la patria, la Institución, mis superiores y compañeros; así como con el cumplimiento de la ley y la misión.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'VALOR: enfrentaré con coraje y osadía los desafíos y retos que la misión me impone, reconociendo mis errores y actuando decididamente para rectificarlos.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'PRUDENCIA: mi comportamiento se fundamentará en la sabiduría práctica, para tomar y ejecutar decisiones acertadas y justas en las diferentes situaciones.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'CONSTANCIA: mi actitud y hábitos estarán sujetos a la persistencia, tenacidad y perseverancia, para cumplir sin interrupciones con los objetivos propuestos.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'SOLIDARIDAD: responderé con acciones humanitarias ante situaciones que pongan en peligro la vida, paz, orden y seguridad de la población.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'FIDELIDAD: es hacia las instituciones, la patria, la familia, la Constitución y la ley',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
        Text(
          'TRANSPARENCIA: honor y rectitud en las acciones que se emprenden por la patria, siendo impenetrables ante la corrupción y actuando según la Constitución Nacional y la ley, bajo el lema: “La ética y la integridad me hacen transparente”.',
          style: TextStyle(fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        )
      ],
    ),
  );
}
