import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filmes"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            _text(),
            _pageView(),
            _buttons(context),
          ],
        ),
      ),
    );
  }

  Column _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(
              context,
              "Page 1",
              () => _onClickNavigator(context, Page1()),
            ),
            _button(
              context,
              "Page 2",
              () => _onClickNavigator(context, Page2()),
            ),
            _button(context, "Page 3", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "Snack", null),
            _button(context, "Toast", null),
            _button(context, "Dialog", null),
          ],
        ),
      ],
    );
  }

  Container _pageView() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 350,
      child: PageView(
        children: <Widget>[
          _img("movie1.jpeg"),
          _img("movie2.jpeg"),
          _img("movie3.jpeg"),
          _img("movie4.jpeg"),
          _img("movie5.jpeg"),
        ],
      ),
    );
  }

  Future<void> _onClickNavigator(BuildContext context, Widget page) async {
    Aluno aluno = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));

    print("Aluno ${aluno.nome} tem matrícula ${aluno.matricula}");

    //print("Retorno da Página 2 é $str");
  }

  RaisedButton _button(context, String str, Function onPressed) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(str),
      onPressed: onPressed,
    );
  }

  Image _img(String movie) => Image.asset(
        "assets/images/" + movie,
        fit: BoxFit.cover,
      );

  Text _text() {
    return Text("Filmes em Cartaz",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ));
  }
}
