import 'package:flutter/material.dart';
import 'package:screen_santander/screens/principal_screen.dart';
    class MenuDrawableScreen extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(

          backgroundColor: Colors.white,
          appBar: AppBar(
             elevation:0,
                      backgroundColor: Colors.white,
            title:Align(alignment: Alignment.center,child:Text("Conheça também"
              ,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
          leading:GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=>MainScreen()),
              );

              /* Write listener code here */
            },
            child: Icon(
              Icons.close_outlined,
              color: Colors.black,size: 50,
              // add custom icons also
            ),
          ),
          ),

          body:
          ListView(
            padding: const EdgeInsets.only(top:5),
            children: <Widget>[

              //menu 1 WAY
              Container(
                height: 70,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Padding(
                         padding: EdgeInsets.only(left: 20),
                         child: Icon(
                           Icons.credit_card,
                           color: Color.fromRGBO(236, 0, 0, 1.0),
                           size: 24.0,
                           semanticLabel: 'Text to announce in accessibility modes',
                         ),
                       ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        child: Text("Way",style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        )
                        )
                        ),
                        Padding(padding: EdgeInsets.only(left: 340,right: 10)
                        ,child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 24.0,

                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          ),
                      ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 68,top: 5),
                        child:  Text("Gerencie seus cartões",style:TextStyle(
                          fontSize: 12,

                        )
                        ),

                        ), FractionallySizedBox(
                        widthFactor: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            height: 1,
                          ),
                        ),
                    )
                  ],
                )
              ),
              //menu 2 Esfera
              Container(
                  height: 70,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.credit_card,
                              color: Color.fromRGBO(236, 0, 0, 1.0),
                              size: 24.0,
                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20),
                              child: Text("Esfera",style:TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                              )
                              )
                          ),
                          Padding(padding: EdgeInsets.only(left: 315,right: 10)
                            ,child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 24.0,

                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 68,top: 5),
                        child:  Text("Rede de parceiras do Santander",style:TextStyle(
                          fontSize: 12,

                        )
                        ),

                      ), FractionallySizedBox(
                        widthFactor: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            height: 1,
                          ),
                        ),
                      )
                    ],
                  )
              ),
              //menu 3 toro
              Container(
                  height: 70,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.credit_card,
                              color: Color.fromRGBO(236, 0, 0, 1.0),
                              size: 24.0,
                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20),
                              child: Text("Toro Investimentos",style:TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                              )
                              )
                          ),
                          Padding(padding: EdgeInsets.only(left: 180,right: 10)
                            ,child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                              size: 24.0,

                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 68,top: 5),
                        child:  Text("Invista fácil e sem corretagem",style:TextStyle(
                          fontSize: 12,

                        )
                        ),

                      ), FractionallySizedBox(
                        widthFactor: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            height: 1,
                          ),
                        ),
                      )
                    ],
                  ),


              ),

          //menu 4 sim
          Container(
            height: 70,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.credit_card,
                        color: Color.fromRGBO(236, 0, 0, 1.0),
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                        child: Text("Sim",style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        )
                        )
                    ),
                    Padding(padding: EdgeInsets.only(left: 340,right: 10)
                      ,child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 24.0,

                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 68,top: 5),
                  child:  Text("Empréstimo rápido e 100% digital",style:TextStyle(
                    fontSize: 12,

                  )
                  ),

                ), FractionallySizedBox(
                  widthFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      height: 1,
                    ),
                  ),
                )
              ],
            ),
          ),
          //menu 5 em dia
          Container(
            height: 70,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.credit_card,
                        color: Color.fromRGBO(236, 0, 0, 1.0),
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                        child: Text("emDia",style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        )
                        )
                    ),
                    Padding(padding: EdgeInsets.only(left: 315,right: 10)
                      ,child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 24.0,

                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 68,top: 5),
                  child:  Text("Negocie dividas sem complicações",style:TextStyle(
                    fontSize: 12,

                  )
                  ),

                ), FractionallySizedBox(
                  widthFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      height: 1,
                    ),
                  ),
                )
              ],
            )
          ) ,
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(left:30,right:30,top:30),
                  child: Container(
                      width: 400,
                      height: 150,
                      color:Colors.red
                  ),
                )
              )

            ],
          ),



        );
      }
    }
    