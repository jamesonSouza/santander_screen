import 'package:flutter/material.dart';




  Widget buildCardWhite(BuildContext _context,Color _corCard,String _text, IconData _icon, Color _corText, Color _corIcon,EdgeInsets _margem) {
    // TODO: implement build
    return _cardWhiteWidget(_context,_corCard,_text,_icon,_corText,_corIcon, _margem);
  }
  Widget _cardWhiteWidget( context,Color cor, String text, IconData icon, Color corText,Color corIcon, EdgeInsets margem) {
    return
    Card(
      elevation: 0.5,
      margin: margem,
      child: Container(
        width: 130,
        height: 125,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: corIcon,
              size: 24.0,

            ),
            Text(text, style: TextStyle(color: corText),)
          ],
        ),
      ),
      color: cor,

    );
  }






