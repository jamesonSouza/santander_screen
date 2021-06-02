import 'package:flutter/material.dart';
import 'package:screen_santander/utils/button_card_build.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
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
        ),
        FractionallySizedBox(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: 1,
              height: 300,
              padding: EdgeInsets.only(top: 200),
              color: Colors.white,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonLogin(),
              )),
        )
      ],
    );
  }
}
