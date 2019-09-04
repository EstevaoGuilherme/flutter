import 'package:flutter/material.dart';

class ListViewEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _listView(),
    );
  }

  _listView() {
    return ListView(
      children: <Widget>[
        Text(
          "Maria",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Jose",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Miguel",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Yoda",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
