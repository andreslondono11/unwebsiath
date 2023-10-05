import 'package:flutter/material.dart';
import 'package:unwebsiath/drawer/lateral.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  // final bool _iconbool = false;

  // IconData _iconLigth = Icons.wb_sunny;
  // IconData _iconLDark = Icons.nights_stay;

  // final ThemeData _LightTheme = ThemeData(
  //   primarySwatch: Colors.blue,
  //   brightness: Brightness.light,
  // );

  // final ThemeData _DarkTheme = ThemeData(
  //   primarySwatch: Colors.blue,
  //   brightness: Brightness.dark,
  // );

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: _iconbool ? _DarkTheme : _LightTheme,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xfff921b21),
            elevation: 10.2,
            shadowColor: Colors.blueGrey,
            title: const Text(
              'Inicios',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            // actions: [
            //   IconButton(
            //       onPressed: () {
            //         setState(() {
            //           _iconbool ? _iconLDark : _iconLigth;
            //         });
            //       },
            //       icon: Icon(_iconbool ? _iconLDark : _iconLigth))

            //   // _iconbool = !_iconbool;
            // ],
          ),
          drawer: const DrawerWigdet(),
          body: ListView(
            children: [
              siath(),
              Container(
                  margin: const EdgeInsets.only(left: 80, right: 80),
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  color: Colors.transparent,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        elevation: 10,
                        padding: const EdgeInsets.all(1),
                        backgroundColor: const Color(0xfff921b21),
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255)),
                    isSemanticButton: true,
                    child: const Text(
                      'Ingresa aqui',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () async {
                      final url = Uri.parse(
                          'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                        print('Cliked');
                      }
                    },
                  )),
              const SizedBox(
                height: 0,
              ),
              const Divider(
                endIndent: 50,
                indent: 50,
                thickness: 2.05,
                color: Color.fromARGB(255, 239, 234, 234),
              ),
              const SizedBox(
                height: 0,
              ),
              siath1(),
              Container(
                  margin: const EdgeInsets.only(left: 70, right: 70),
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        elevation: 5.2,
                        padding: const EdgeInsets.all(1),
                        backgroundColor: const Color(0xfff921b21),
                        foregroundColor:
                            const Color.fromARGB(255, 237, 241, 246)),
                    isSemanticButton: true,
                    child: const Text(
                      'Saca tu Cita Medica',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () async {
                      final url = Uri.parse('https://portal.saludsis.mil.co/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                        print('Cliked');
                      }
                    },
                  )),
              const SizedBox(
                height: 0,
              ),
              const Divider(
                endIndent: 50,
                indent: 50,
                thickness: 2.05,
                color: Color.fromARGB(255, 239, 234, 234),
              ),
              const SizedBox(
                height: 10,
              ),
              columna2(),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                endIndent: 50,
                indent: 50,
                thickness: 2.05,
                color: Color.fromARGB(255, 148, 78, 21),
              ),
              const SizedBox(
                height: 30,
              ),
              columna3()
            ],
          ),
        ));
  }
}

Widget siath() {
  return Container(
    child: const Image(
        height: 120, image: AssetImage('assets/images/siathmnd.png')),
  );
}

Widget columna2() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 30),
        alignment: Alignment.center,
        // color: const Color.fromARGB(255, 255, 255, 255),
        child: const Text(
          'UnWebsiath es una aplicación móvil versátil desarrollada por PZPLATINUM para la plataforma Android. Diseñada para el Ejército Nacional, esta aplicación ofrece una forma conveniente de acceder a varios servicios esenciales en un solo lugar. Desde obtener su tarjeta de identificación digital hasta recibir notificaciones sobre traslados, gestionar correos electrónicos y programar citas médicas, UnWebsiath tiene como objetivo agilizar las tareas administrativas del personal militar.',
          style: TextStyle(
              color: Color.fromARGB(255, 142, 148, 150),
              fontSize: 12,
              decorationStyle: TextDecorationStyle.double),
          textAlign: TextAlign.justify,
        ),
      )
    ],
  );
}

Widget siath1() {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child:
        const Image(height: 120, image: AssetImage('assets/images/salud.jpg')),
  );
}

Widget columna3() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 30),
        alignment: Alignment.center,
        //color: const Color.fromARGB(255, 5, 113, 201),
        child: const Text(
          'Entra a la seccion de Servicios para que tenga acceso a todos los canales Insittucionales que te ofrece la Insititucion, tambien puedes desplegar la barra lateral y encontraras mas servicios, y tambien recuerda que esta la seccion de "Doctrina" en su especial volver a lo basico',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xfff921b21),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
