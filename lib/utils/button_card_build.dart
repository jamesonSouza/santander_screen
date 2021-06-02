import 'package:flutter/material.dart';

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: Color.fromRGBO(236, 0, 0, 1.0),
              borderRadius: BorderRadius.all(Radius.circular(
                      5.0) //                 <--- border radius here
                  )),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Entrar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
