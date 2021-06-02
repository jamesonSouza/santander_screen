import 'package:flutter/material.dart';
import 'package:screen_santander/widgets/cam_pag_widiget.dart';
import 'package:screen_santander/widgets/qrcode_widget.dart';

class BuildButtonTable extends StatefulWidget {
  @override
  _BuildButtonTableState createState() => _BuildButtonTableState();
}

class _BuildButtonTableState extends State<BuildButtonTable> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CamWidget(),
    QrCodeWidget(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        elevation: 0,
        iconSize: 24.0,
        currentIndex: _currentIndex,
        fixedColor: Color.fromRGBO(236, 0, 0, 1.0),
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.qr_code_scanner),
            label: 'Pagar',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.qr_code_outlined),
            label: 'Cobrar',
          ),
        ],
      ),
    );
  }
}
