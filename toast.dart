import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          child: Text("Alert toast"),
          onPressed: () {
            _toast();
          },
        )
      ],
    ),
  );
}

_toast() {
  Fluttertoast.showToast(
      msg: "Isso é um toast!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
