import 'package:flutter/material.dart';

import 'person.dart';
import 'person_data.dart';
import 'style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Person person = Person(
    circleAvatarImg: circleAvatarImgMock,
    name: nameMock,
    jobTitle: jobTitleMock,
    phoneNumber: phoneNumberMock,
    emailAddress: emailAddressMock,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(person.circleAvatarImg),
              ),
              Text(
                person.name,
                style: TextStyle(
                  fontFamily: fontFamilyPrimary,
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: fontFamilySecondary,
                  fontSize: 20.0,
                  color: secondaryColorShade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  height: 1.0,
                  color: secondaryColorShade100,
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
                    color: primaryColor,
                  ),
                  title: Text(
                    person.phoneNumber,
                    style: TextStyle(
                      color: secondaryColorShade900,
                      fontFamily: fontFamilySecondary,
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
                    color: primaryColor,
                  ),
                  title: Text(
                    person.emailAddress,
                    style: TextStyle(
                      color: secondaryColorShade900,
                      fontFamily: fontFamilySecondary,
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
