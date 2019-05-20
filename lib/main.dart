import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String circleAvatarImgUrl =
      'https://yt3.ggpht.com/a/AGF-l7_p35s8NY-EOwhcv9cgmj1RB2s4jkQyR7YoKQ=s900-mo-c-c0xffffffff-rj-k-no';
  final String circleAvatarImg = 'images/tulio.jpg';
  final String fontFamilyPacifico = 'Pacifico';
  final String fontFamilySourceSansPro = 'Source Sans Pro';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(circleAvatarImg),
              ),
              Text(
                'Túlio M. França',
                style: TextStyle(
                  fontFamily: fontFamilyPacifico,
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: fontFamilySourceSansPro,
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
