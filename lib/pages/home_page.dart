import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Filmes"),
          centerTitle: true,
        ),
        body: _body(),
      ),
    );
  }

  Container _body() {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/images/movie1.jpeg"),
    );
  }

  Text _text() {
    return Text("Filmes em Cartaz",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ));
  }
}
