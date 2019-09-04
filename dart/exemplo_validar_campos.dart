import 'package:app_teste/exemplo_funcoes_validadoras.dart';
import 'package:flutter/material.dart';

class ExemploTextFormField extends StatelessWidget {

  GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  TextEditingController _nomeController = TextEditingController();
  String _nome;
  String _cpf;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _keyForm,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _nomeController,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      border: OutlineInputBorder()
                    ),
                    validator: (nome){
                      return validaNome(nome);
                    },
                    onSaved: (nome){
                      _nome = nome;
                    },
                  ),
                  Divider(),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Cpf",
                      border: OutlineInputBorder()
                    ),
                    validator: (cpf){
                      return validaCpf(cpf);
                    },
                    onSaved: (cpf){
                      _cpf = cpf;
                    },
                  ),
                  Divider(),
                  RaisedButton(
                    child: Text("Validar"),
                    onPressed: (){
                      if(_keyForm.currentState.validate()){
                        print("Foi validado.");
                        _keyForm.currentState.save();
                        print("Nome: $_nome");
                        print("Cpf: $_cpf");
                        print("Nome Controller: ${_nomeController.text}");
                      }else{
                        print("Não foi validado.");
                      }                      
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}