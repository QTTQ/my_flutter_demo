import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/store_comm.dart';

class NewsPage extends StatefulWidget {
  final Widget child;

  NewsPage({Key key, this.child}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(100),
      child: Provide<CommStore>(
        builder: (context, child, counter) {
          return Text(
            "${counter.value}呵呵",
            style: Theme.of(context).textTheme.display1,
          );
        },
      ),
    );
  }
}
