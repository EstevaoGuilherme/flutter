import 'package:flutter/material.dart';

class ExemploStatefulWidget extends StatefulWidget {
  @override
  _ExemploStatefulWidgetState createState(){
      return _ExemploStatefulWidgetState();
  } 
}

class _ExemploStatefulWidgetState extends State<ExemploStatefulWidget> {
  
  double valor = 0;

  void acrescentar(){
    setState(() {
     valor = valor + 100; 
    });
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
            color: Colors.redAccent,
            onPressed: () {
              acrescentar();
            },
          )
        ],
      ),
    );
  }
}