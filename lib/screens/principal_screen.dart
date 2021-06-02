import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_santander/widgets/card_common_widget.dart';
import 'package:screen_santander/widgets/vertical_drag_widget.dart';
import 'login_screen.dart';
import 'menu_drawable_screen.dart';

class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue
        , child: Stack(
        children: [

          Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset('images/logo.png',
                  fit: BoxFit.fill, alignment: Alignment.topCenter,),
              ),
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder:(context)=>MenuDrawableScreen()),
                  );
                  print("teste");
                  /* Write listener code here */
                },
                child: Icon(
                  Icons.menu,
                  // add custom icons also
                ),
              ),
              backgroundColor: Color.fromRGBO(236, 0, 0, 1.0),
              centerTitle: true,
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(Icons.wrong_location_outlined,
                      color: Colors.white)
                  , onPressed: () {},)
              ],
            ),
            body:
            Column(
                children: [
                  FractionallySizedBox(
                      alignment: Alignment.topCenter,
                      widthFactor: 1,
                      //  heightFactor: 1,
                      child: Container(

                        //  width: 400,
                          height: 300,
                          color: Colors.white,
                          child: Image.asset('images/banner.png',
                            fit: BoxFit.fill,)
                      )
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                    , children: [
                      // cards widgets rece valores de variaveis e insere no card
                   buildCardWhite(context,Colors.white,"Atendimento",Icons.chat_outlined, Colors.black,Color.fromRGBO(236, 0, 0, 1.0),EdgeInsets.only(left: 30, top: 25, right: 10),),
                    buildCardWhite(context,Colors.white,"ID Santander",Icons.lock_open, Colors.black,Color.fromRGBO(236, 0, 0, 1.0),EdgeInsets.only(left: 0, top: 25, right: 10),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>LoginAcessScreen()),
                      );
                    },
                    child: buildCardWhite(context,Color.fromRGBO(236, 0, 0, 1.0),"Acessar sua conta",Icons.account_balance_outlined, Colors.white,Colors.white,EdgeInsets.only(left: 0, top: 25, right: 30),),

                  )
                    ],
                  ),
                ]
            ),
          ),
          buildVerticalDrag(context),//widget buildVerticalDrag


        ])

    );
  }
}

