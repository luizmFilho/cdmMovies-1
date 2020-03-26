import 'package:flutter/material.dart';

class DrawerDefault extends StatelessWidget {
  const DrawerDefault({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.stars),
              title: Text("Informações"),
              subtitle: Text("Sobre Flutter"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Pressionei Informações");
              }),
          ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda"),
              subtitle: Text("Sobre Flutter"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Ajuda");
              }),
          ListTile(
              leading: Icon(Icons.input),
              title: Text("Logon"),
              subtitle: Text("na App"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Pressionei Logon");
              }),
        ],
      ),
    );
  }
}
