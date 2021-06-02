import 'package:flutter/material.dart';
import 'package:screen_santander/utils/camera_build.dart';

class CamWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        alignment: Alignment.topCenter,
        widthFactor: 1,
        //heightFactor: 0.8,
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height / 1.35,
          child: FutureBuilder<CameraApp>(builder:
              (BuildContext context, AsyncSnapshot<CameraApp> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.none:
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    strokeWidth: 5.0,
                  ),
                );
              default:
                return CameraApp();
            }
          }),
        ));
  }
}
