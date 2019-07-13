import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final Widget child;

  NewsPage({Key key, this.child}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("消息"),
    );
  }
}