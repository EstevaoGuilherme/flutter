import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _builderAlert(context),
    );
  }
}

_builderAlert(context) {
  return Container(
    width: double.infinity,
    color: Colors.yellow,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("Alert"),
          onPressed: () {
            _alert(context);
          },
        )
      ],
    ),
  );
}

void _alert(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Alerta"),
          content: Text("Isso é um alerta!"),
          actions: <Widget>[
            FlatButton(
              child: Text("Sim"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("Não"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      });
}
