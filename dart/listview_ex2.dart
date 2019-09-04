import 'package:flutter/material.dart';

class ListViewPessoas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _listView(),
    );
  }
}

_listView() {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          child: Text("M"),
        ),
        title: Text("Maria Pereira"),
        subtitle: Text("maria@gmail.com"),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          print("Maria");
        },
        onLongPress: () {
          print("maria@gmail.com");
        },
      ),
      ListTile(
        leading: CircleAvatar(
          child: Text("J"),
        ),
        title: Text("Jose Pereira"),
        subtitle: Text("jose@gmail.com"),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          print("Jose");
        },
        onLongPress: () {
          print("jose@gmail.com");
        },
      ),
    ],
  );
}
