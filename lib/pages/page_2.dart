import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 2"),
      ),
      body: _button(context),
    );
  }

  _button(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text(
          "Retornar",
        ),
        onPressed: _onPressed(context),
      ),
    );
  }

  _onPressed(context) {
    return Navigator.pop(context, Aluno(123, "Penélope"));
  }
}

class Aluno {
  int matricula;
  String nome;

  Aluno(this.matricula, this.nome);
}
