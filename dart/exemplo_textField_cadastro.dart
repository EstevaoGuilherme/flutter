import 'package:app_teste/exemplo_function_build_textfield.dart';
import 'package:flutter/material.dart';

class ExemploTextField extends StatelessWidget {
  TextEditingController _nome = TextEditingController();
  TextEditingController _cpf = TextEditingController();
  TextEditingController _telefone = TextEditingController();
  TextEditingController _email = TextEditingController();

  void cadastrarDados() {
    print("==Cadastrado==");
    print("Nome: ${_nome.text}");
    print("Cpf: ${_cpf.text}");
    print("Telefone: ${_telefone.text}");
    print("Email: ${_email.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cadastro",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                buildTextField(
                  hint: "Digite o nome",
                  label: "Nome",
                  control: _nome,
                  type: TextInputType.text
                ),

                buildTextField(
                  hint: "Digite o cpf",
                  label: "Cpf",
                  control: _cpf,
                  type: TextInputType.text
                ),

                buildTextField(                  
                  control: _telefone,
                  hint: "Digite o telefone",
                  label: "Telefone",                  
                  type: TextInputType.phone
                ),

                buildTextField(                  
                  control: _email,
                  hint: "Digite o email",
                  label: "Email",                  
                  type: TextInputType.emailAddress
                ),


                RaisedButton(
                  child: Text(
                    "Cadastar",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    cadastrarDados();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}


