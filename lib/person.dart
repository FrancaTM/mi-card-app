import 'package:flutter_web/material.dart';

class Person {
  final String circleAvatarImg;
  final String name;
  final String jobTitle;
  final String phoneNumber;
  final String emailAddress;

  Person(
      {@required this.circleAvatarImg,
      @required this.name,
      @required this.jobTitle,
      @required this.phoneNumber,
      @required this.emailAddress});
}
