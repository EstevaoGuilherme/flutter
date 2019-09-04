
import 'dart:io';
import 'package:app_teste_3/listview_ex3.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: (){
              exit(0);
            },
          )
        ],
      ),
      body: Container(),
      drawer: _drawer(context),
    );
  }
}

_drawer(context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.white,
            ),
            onTap: (){
              print("--> circler avatar");
            },
          ),
          accountName: Text("Maria Lima"),
          accountEmail: Text("maria@gmail.com"),
        ),

        ListTile(
          leading: Icon(Icons.list),
          title: Text("Listar Pessoas"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ListViewPessoas();
              })
            );
          },
        ),
        
      ],
    ),
  );
}
