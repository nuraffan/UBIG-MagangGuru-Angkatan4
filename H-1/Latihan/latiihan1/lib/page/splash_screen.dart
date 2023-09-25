///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class SplashSccreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: const Color(0xff007f68),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
        ),
        child: const Stack(
          alignment: Alignment.center,
          children: [
            ///***If you have exported images you must have to copy those images in assets/images directory.
            Image(
              image: NetworkImage(
                  "https://cdn1.iconfinder.com/data/icons/seo-and-development-hexagon/128/18-256.png"),
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment(0.0, 1.0),
              child: Text(
                "Latihan 1 Flutter Vis",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 22,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
