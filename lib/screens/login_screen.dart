import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'dart:async';

import 'package:screen_santander/widgets/field_password_widget.dart';

class LoginAcessScreen extends StatefulWidget {
  @override
  _LoginAcessScreenState createState() => _LoginAcessScreenState();
}

class _LoginAcessScreenState extends State<LoginAcessScreen> {
  final cpfcontroller = TextEditingController();
  double _opacity = 0;
  bool status = false;
  StreamController<String> _streamController;

  void validador(String text) {
    setState(() {
      cpfcontroller.text = text;
      if (cpfcontroller.text.length < 11) {
        print('falta');
      } else {
        print("ok");
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _streamController = StreamController<String>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(236, 0, 0, 1.0),
        title: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            'images/logo.png',
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.wrong_location_outlined, color: Colors.white),
            color: Color.fromRGBO(236, 0, 0, 1.0),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Acessar sua conta",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: TextField(
              maxLength: 11,
              controller: cpfcontroller,
              decoration: InputDecoration(
                labelText: "CPF",
                labelStyle: TextStyle(color: Colors.grey),

                // prefixText: _prefix ,
              ),
              style: TextStyle(color: Colors.black, fontSize: 20.0),
              onChanged: validador,
              keyboardType: TextInputType.number,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Lembrar meu CPF",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: FlutterSwitch(
                  width: 60.0,
                  height: 40.0,
                  activeColor: Colors.red,
                  valueFontSize: 25.0,
                  toggleSize: 35.0,
                  value: status,
                  borderRadius: 30.0,
                  padding: 2.0,
                  showOnOff: false,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              )
            ],
          ),
          StreamBuilder(
              stream: _streamController.stream,
              initialData: [],
              builder: (context, snapshot) {
                if (snapshot.hasData && cpfcontroller.text.length >= 11) {
                  return PassFieldWidget();
                } else {
                  return Opacity(
                      opacity: 0,
                      child: Center(
                          child: CircularProgressIndicator(
                        backgroundColor: Colors.red,
                      )));
                }
              })
        ],
      ),
    );
  }
}
