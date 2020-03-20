import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => print("Pressionei o botão!"),
            child: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
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

  _buttons(context) {
    return Builder(builder: (context) {
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
              _button(
                context,
                "Snack",
                () => _onClickSnack(context),
              ),
              _button(
                context,
                "Toast",
                () => _onClickToast(context),
              ),
              _button(
                context,
                "Dialog",
                () => _onClickDialog(context),
              ),
            ],
          ),
        ],
      );
    });
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

  _onClickDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text("Você quer sair do sistema!"),
              actions: <Widget>[
                FlatButton(
                    child: Text("Sim"),
                    onPressed: () {
                      Navigator.pop(context);
                      print("Estou saindo do sistema!");
                    }),
                FlatButton(
                    child: Text("Não"),
                    onPressed: () {
                      Navigator.pop(context);
                      print("Vou continuar no sistema!");
                    }),
              ],
            ),
          );
        });
  }

  _onClickSnack(context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Filmes de Ação!"),
        action: SnackBarAction(
          label: "OK",
          onPressed: () {
            print("Agora entendi!");
          },
        ),
      ),
    );
  }

  _onClickToast(context) {
    Fluttertoast.showToast(
        msg: "Filmes de Ação",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
