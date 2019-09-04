import 'package:app_teste_3/pessoa.dart';
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

_listView(){

  List<Pessoa> pessoas = List<Pessoa>();
  pessoas.add(Pessoa("Maria Lima", "maria@gmail.com"));
  pessoas.add(Pessoa("Jose Lima", "jose@gmail.com"));
  pessoas.add(Pessoa("Yoda Lima", "yoda@gmail.com"));
  pessoas.add(Pessoa("Carlos Lima", "carlos@gmail.com"));
  pessoas.add(Pessoa("Miguel Lima", "miguel@gmail.com"));

  return ListView.builder(
    itemCount: pessoas.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          child: Text(pessoas[index].nome[0]),
        ),
        title: Text(pessoas[index].nome),
        subtitle: Text(pessoas[index].email),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){
          print("Nome: ${pessoas[index].nome}");
        },
        onLongPress: (){
          print("Email: ${pessoas[index].email}");
        },
      );
    },
  );
}