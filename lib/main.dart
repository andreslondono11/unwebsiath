import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unwebsiath/drawer/lateral.dart';
import 'package:unwebsiath/screens/boton_nav.dart';
import 'package:unwebsiath/screens/rutas.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'home', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  NavegaHome? myBnB;

  @override
  void initState() {
    myBnB = NavegaHome(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: const Text('AppBar Demo'),
      //  ),
      //drawer: DrawerWigdet(),
      bottomNavigationBar: myBnB,
      body: Rutas(index: index),
      drawer: DrawerWigdet(),
    );
  }
}

