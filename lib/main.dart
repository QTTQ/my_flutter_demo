import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './provide/comm.dart';
import './pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
