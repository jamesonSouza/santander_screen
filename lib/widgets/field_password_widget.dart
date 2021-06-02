import 'package:flutter/material.dart';

class PassFieldWidget extends StatefulWidget {
  @override
  _PassFieldWidgetState createState() => _PassFieldWidgetState();
}

class _PassFieldWidgetState extends State<PassFieldWidget> {
  final passController = TextEditingController();

  void _password(String _text) {
    passController.text = _text;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 11,
      controller: passController,
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(color: Colors.grey),

        // prefixText: _prefix ,
      ),
      style: TextStyle(color: Colors.black, fontSize: 20.0),
      onChanged: _password,
      keyboardType: TextInputType.number,
    );
  }
}
