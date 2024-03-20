// ignore_for_file: prefer_const_constructors

import 'package:appiiii_sample/controller/homescreencontroller.dart';
import 'package:appiiii_sample/view/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homescreencontroller(),
        )
      ],
      child: MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
