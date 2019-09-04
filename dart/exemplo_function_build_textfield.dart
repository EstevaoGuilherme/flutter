import 'package:flutter/material.dart';

Widget buildTextField({String label, 
                      String hint,
                      TextEditingController control,
                      TextInputType type}) {
  return TextField(
    controller: control,
    keyboardType: type,
    decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 25,
        ),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 20),
        helperText: "* Obrigatório",
        helperStyle: TextStyle(color: Colors.red)),
  );
}