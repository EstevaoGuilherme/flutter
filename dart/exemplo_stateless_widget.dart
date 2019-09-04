import 'package:flutter/material.dart';

class ExemploStatelessWidget extends StatelessWidget {
  
  double valor = 0;

  void acrescentar(){
    valor = valor + 100;
    print("$valor");
  }  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("R\$ $valor", 
            style: TextStyle(
              fontSize: 30
            ),
          ),
          RaisedButton(
            child: Text("+100", 
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),
            ),
            color: Colors.pink,
            onPressed: () {
              acrescentar();
            },
          )
        ],
      ),
    );
  }

}