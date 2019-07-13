import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  final Widget child;

  CommunityPage({Key key, this.child}) : super(key: key);

  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("社区"),
    );
  }
}