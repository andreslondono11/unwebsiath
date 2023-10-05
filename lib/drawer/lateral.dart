import 'package:flutter/material.dart';
import 'package:unwebsiath/screens/page2.dart';
import 'package:unwebsiath/screens/page3.dart';
import 'package:unwebsiath/screens/page4.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/page1.dart';

class DrawerWigdet extends StatefulWidget {
  const DrawerWigdet({super.key});

  @override
  State<DrawerWigdet> createState() => _DrawerWigdetState();
}

class _DrawerWigdetState extends State<DrawerWigdet> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      width: 200,
      child: ListView(
        // Importante: elimine cualquier padding del ListView.

        children: <Widget>[
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 0,
                      image: AssetImage('assets/images/pastel.png'),
                    ),
                  ),
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      // SizedBox(height: 20),
                      CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/images/playstore.png'),
                      )
                    ],
                  ))
            ],
          ),
          // const Divider(
          //   color: Color(0xfff921b21),
          //   endIndent: 30,
          //   thickness: 0.30,
          //   height: 0,
          //   indent: 30,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                iconColor: const Color.fromARGB(255, 58, 88, 212),
                enabled: true,
                hoverColor: const Color.fromARGB(255, 30, 231, 231),
                title: const Text(
                  'INICIO',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w600,
                      fontSize: 11),
                ),
                onTap: () {
                  Navigator.pop(
                      context); // Actualiza el estado de la aplicación
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Page1())); // ...
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.room_service_outlined),
            title: const Text(
              'SERVICIOS',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w600,
                  fontSize: 11),
            ),
            iconColor: const Color.fromARGB(255, 27, 145, 25),
            enabled: true,
            hoverColor: const Color.fromARGB(255, 30, 231, 231),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Page2()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.safety_divider),
            iconColor: const Color.fromARGB(255, 231, 127, 7),
            enabled: true,
            hoverColor: const Color.fromARGB(255, 30, 231, 231),
            title: const Text('BIENESTAR',
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12),
                    fontWeight: FontWeight.w600,
                    fontSize: 11)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Page3()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            iconColor: const Color.fromARGB(255, 211, 12, 12),
            enabled: true,
            hoverColor: const Color.fromARGB(255, 234, 205, 167),
            title: const Text('POLITICAS  SEGURIDAD',
                style: TextStyle(
                    color: Color.fromARGB(255, 23, 23, 22),
                    fontWeight: FontWeight.w600,
                    fontSize: 11)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const Page4())); // Actualiza el estado de la aplicación
              // ...
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xfff921b21),
            endIndent: 30,
            thickness: 0.30,
            height: 0,
            indent: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: const Icon(Icons.assistant_navigation),
              iconColor: const Color.fromARGB(255, 26, 21, 168),
              enabled: true,
              hoverColor: const Color.fromARGB(255, 234, 205, 167),
              title: const Text('SIATH',
                  style: TextStyle(
                      color: Color.fromARGB(255, 26, 21, 168),
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
              onTap: () async {
                final url = Uri.parse(
                    'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  print('Cliked');
                  // Actualiza el estado de la aplicación
                  // ...
                }
              }),
          ListTile(
              leading: const Icon(Icons.family_restroom),
              iconColor: const Color.fromARGB(255, 100, 97, 93),
              enabled: true,
              hoverColor: const Color.fromARGB(255, 234, 205, 167),
              title: const Text('Convenios Insitucionales',
                  style: TextStyle(
                      color: Color.fromARGB(255, 26, 21, 168),
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
              onTap: () async {
                final url = Uri.parse(
                    'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  print('Cliked');
                  // Actualiza el estado de la aplicación
                  // ...
                }
              }),
          // ListTile(
          //   leading: const Icon(Icons.people_alt_outlined),
          //   iconColor: const Color.fromARGB(255, 100, 97, 93),
          //   enabled: false,
          //   hoverColor: const Color.fromARGB(255, 26, 21, 168),
          //   title: const Text('Soldados Profesionales',
          //       style: TextStyle(
          //           color: Color.fromARGB(255, 70, 70, 77),
          //           fontWeight: FontWeight.bold,
          //           fontSize: 12)),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (BuildContext context) =>
          //                 const Page4())); // Actualiza el estado de la aplicación
          //     // ...
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.person_outline),
          //   iconColor: const Color.fromARGB(255, 100, 97, 93),
          //   enabled: false,
          //   hoverColor: const Color.fromARGB(255, 234, 205, 167),
          //   title: const Text('Personal Civil',
          //       style: TextStyle(
          //           color: Color.fromARGB(255, 70, 70, 77),
          //           fontWeight: FontWeight.bold,
          //           fontSize: 12)),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (BuildContext context) =>
          //                 const Page4())); // Actualiza el estado de la aplicación
          //     // ...
          //   },
          // ),
        ],
      ),
    );
  }
}
