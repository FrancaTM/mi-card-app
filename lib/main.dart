import 'package:flutter_web/material.dart';

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

  Widget _buildText(
      String text, String fontFamily, double fontSize, Color color,
      [double letterSpacing = 1.0]) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
      ),
    );
  }

  Widget _buildCard(IconData icon, String text) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: primaryColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: secondaryColorShade900,
            fontFamily: fontFamilySecondary,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Widget _buildBox() {
    return SizedBox(
      height: 20.0,
      width: 150.0,
      child: Divider(
        height: 1.0,
        color: secondaryColorShade100,
      ),
    );
  }

  Widget _buildLayout() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(person.circleAvatarImg),
          ),
          _buildText(person.name, fontFamilyPrimary, 40.0, Colors.white),
          _buildText(person.jobTitle, fontFamilySecondary, 20.0,
              secondaryColorShade100, 2.5),
          _buildBox(),
          _buildCard(Icons.phone, person.phoneNumber),
          _buildCard(Icons.email, person.emailAddress),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: _buildLayout(),
      ),
    );
  }
}
