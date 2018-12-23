import 'package:flutter/material.dart';

class Gradients {
  final mainBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.1, 0.5, 0.7, 0.9],
    colors: [
      Color.fromARGB(255, 40, 49, 78),
      Color.fromARGB(255, 34, 41, 67),
      Color.fromARGB(255, 27, 30, 47),
      Color.fromARGB(255, 22, 22, 34),
    ],
  );
}
