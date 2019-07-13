import 'package:flutter/material.dart';

class PersonalCenter extends StatefulWidget {
  final Widget child;

  PersonalCenter({Key key, this.child}) : super(key: key);

  _PersonalCenterState createState() => _PersonalCenterState();
}

class _PersonalCenterState extends State<PersonalCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("个人中心"),
    );
  }
}