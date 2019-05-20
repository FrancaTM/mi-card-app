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
  final String phoneNumber = '+55 (41)99566-7914';
  final String emailAddress = 'francatm@outlook.com';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  height: 1.0,
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    phoneNumber,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: fontFamilySourceSansPro,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    emailAddress,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: fontFamilySourceSansPro,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
