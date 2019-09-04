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
  return Builder(
    builder: (BuildContext context) {
      Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("SnackBar"),
              onPressed: () {
                _snackbar(context);
              },
            )
          ],
        ),
      );
    },
  );
}

_snackbar(context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("SnackBar..."),
  ));
}
