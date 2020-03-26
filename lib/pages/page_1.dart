import 'package:cdm_movies/utils/drawer_default.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 1"),
      ),
      body: _body(),
      drawer: DrawerDefault(),
    );
  }

  _body() {
    List<Image> movies = [
      _img("movie1.jpeg"),
      _img("movie2.jpeg"),
      _img("movie3.jpeg"),
      _img("movie4.jpeg"),
      _img("movie5.jpeg"),
    ];

    return ListView.builder(
        itemCount: movies.length,
        itemExtent: 300,
        padding: EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return movies[index];
        });
  }

  Image _img(String movie) => Image.asset(
        "assets/images/" + movie,
        fit: BoxFit.cover,
      );
}
