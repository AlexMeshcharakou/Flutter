import 'package:flutter/material.dart';

class MyAppBar extends AppBar {

  MyAppBar({Key? key}) :super(key: key,
    backgroundColor: Colors.deepPurple,
    leading: const Icon(
      Icons.arrow_forward,
      size: 40,
      color: Colors.red,
    ),
    centerTitle: true,
    elevation: 10,
    title: const Text(
      'Module two',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontFamily: 'Barriecito',
          fontSize: 40,
          color: Colors.red,
          decoration: TextDecoration.underline,
          decorationThickness: 2),
    ),
  );
}

