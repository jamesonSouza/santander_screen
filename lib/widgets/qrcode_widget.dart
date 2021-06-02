import 'package:flutter/material.dart';

class QrCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      'qrcode.png',
      fit: BoxFit.fill,
    ));
  }
}
