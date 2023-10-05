import 'package:flutter/material.dart';

class NavegaHome extends StatefulWidget {
  final Function currentIndex;
  const NavegaHome({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<NavegaHome> createState() => _NavegaHomeState();
}

class _NavegaHomeState extends State<NavegaHome> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 210, 125, 125),
        elevation: 0,
        iconSize: 20.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'inicio',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service), label: 'Servicios'),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_divider), label: 'Bienestar'),
          BottomNavigationBarItem(icon: Icon(Icons.policy), label: 'Politicas'),
        ]);
  }
}
