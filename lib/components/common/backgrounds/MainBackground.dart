import 'package:flutter/material.dart';

class MainBackground extends StatelessWidget {
  final Widget child;

  const MainBackground({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Color.fromARGB(255, 40, 49, 78),
            Color.fromARGB(255, 34, 41, 67),
            Color.fromARGB(255, 27, 30, 47),
            Color.fromARGB(255, 22, 22, 34),
          ],
        ),
      ),
      child: child,
    );
  }
}
