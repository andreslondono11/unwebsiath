import 'package:flutter/material.dart';
import 'package:unwebsiath/drawer/lateral.dart';
// import 'package:unwebsiath/screens/page4.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:unwebsiath/screens/page4.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 10.2,
            shadowColor: Colors.blueGrey,
            title: const Text(
              'Servicios',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color(0xfff921b21),
          ),
          drawer: const DrawerWigdet(),
          body: ListView(
            children: [
              img1(),
              linea1(),
              margen2(),
              cei(),
              margen1(),
              img2(),
              linea1(),
              margen2(),
              boton1(),
              margen1(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  img4(),
                  img3(),
                ],
              ),
              linea1(),
              // margen2(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  boton3(),
                  boton2(),
                ],
              ),
              // margen1(),
              // linea1(),
              // margen2(),
            ],
          )),
    );
  }
}

Image img1() {
  return const Image(
    width: 800,
    image: AssetImage('assets/images/correov.png'),
  );

  // Image(
  //   height: 120,
  //   fit: BoxFit.scaleDown,

  //   image: AssetImage('assets/images/correov.png'),
  // );
}

Widget linea1() {
  return const Divider(
    color: Color(0xfff921b21),
    endIndent: 50,
    thickness: 0.09,
    height: 10,
    indent: 50,
  );
}

Widget cei() {
  return (Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(right: 10, left: 50),
          padding: const EdgeInsets.only(right: 10, left: 0),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xfff921b21),
                  foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
              onPressed: () async {
                final url = Uri.parse('https://correo.buzonejercito.mil.co/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  print('Cliked');
                }
              },
              child: const Text(
                'OF-SUB-CIV',
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              ))),
      Container(
          margin: const EdgeInsets.only(right: 50, left: 50),
          padding: const EdgeInsets.only(right: 10, left: 20),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xfff921b21),
                  foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
              onPressed: () async {
                final url = Uri.parse('https://correo1.buzonejercito.mil.co/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  print('Cliked');
                }
              },
              child: const Text('SLP-OPS',
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  )))),
    ],
  ));
}

Widget img2() {
  return const Image(
    image: AssetImage('assets/images/siweb.png'),
  );
}

Widget margen1() {
  return const SizedBox(
    height: 35,
  );
}

Widget margen2() {
  return const SizedBox(
    height: 10,
  );
}

Widget boton1() {
  return Container(
      margin: const EdgeInsets.only(right: 100, left: 100),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xfff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url =
                Uri.parse('https://caocc.ejercito.mil.co:4443/SiwepDiper-web/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              print('Cliked');
            }
          },
          child: const Text(
            'NOTIFICIACIONES',
            style: TextStyle(fontWeight: FontWeight.bold),
          )));
}

Widget img3() {
  return const Image(
    height: 80,
    image: AssetImage('assets/images/fovid.png'),
  );
}

Widget boton2() {
  return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xfff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url =
                Uri.parse('https://fovid.ejercito.mil.co:4443/Fovid-2.0/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              print('Cliked');
            }
          },
          child: const Text(
            'INGRESA AQUI ',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )));
}

Widget img4() {
  return const Image(
    height: 80,
    image: AssetImage('assets/images/sac.png'),
  );
}

Widget boton3() {
  return Container(
      margin: const EdgeInsets.only(right: 20, left: 1),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xfff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url = Uri.parse('https://www.pqr.mil.co/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              print('Cliked');
            }
          },
          child: const Text(
            'INGRESA  AQUI',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )));
}
