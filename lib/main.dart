import 'package:flutter/material.dart';

void main() => runApp(MoviesAPP());

class MoviesAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Container(
        color: Colors.white,
      ),
    );
  }
}
