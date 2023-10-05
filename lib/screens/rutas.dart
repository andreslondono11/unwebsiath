import 'package:flutter/material.dart';
import 'package:unwebsiath/screens/page1.dart';
import 'package:unwebsiath/screens/page2.dart';
import 'package:unwebsiath/screens/page3.dart';
import 'package:unwebsiath/screens/page4.dart';

class Rutas extends StatelessWidget {
  final int index;

  const Rutas({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> MyList = [
      const Page1(),
      const Page2(),
      const Page3(),
      const Page4()
    ];
    return MyList[index];
  }
}
