import 'package:flutter/material.dart';
import 'package:screen_santander/utils/button_table_build.dart';
import 'package:screen_santander/utils/camera_build.dart';

Widget buildVerticalDrag(BuildContext context) {
  bool pressAttention = false;
  CameraApp camera = CameraApp();

  return DraggableScrollableSheet(
      maxChildSize: 0.91,
      minChildSize: 0.09,
      initialChildSize: 0.09,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          //  color: Colors.blue[100],
          child: ListView.builder(
            controller: scrollController,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 200, right: 200, top: 20),
                      child: FractionallySizedBox(
                          widthFactor: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                )),
                            height: 5,
                          ))),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.touch_app_outlined,
                          color: Color.fromRGBO(236, 0, 0, 1.0),
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pagar ou Cobrar',
                          style: TextStyle(
                            color: Color.fromRGBO(236, 0, 0, 1.0),
                          ),
                        )
                      ],
                    ),
                  ),
                  FractionallySizedBox(
                      alignment: Alignment.topCenter,
                      widthFactor: 1,
                      //heightFactor: 0.8,
                      child: Container(
                        color: Colors.black,
                        height: MediaQuery.of(context).size.height / 1.35,
                        child: FutureBuilder<CameraApp>(builder:
                            (BuildContext context,
                                AsyncSnapshot<CameraApp> snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                            case ConnectionState.none:
                              return Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.black),
                                  strokeWidth: 5.0,
                                ),
                              );
                            default:
                              return CameraApp();
                          }
                        }),
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BuildButtonTable(),
                  )
                ],
              );
            },
          ),
        );
      });
}
