import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import './provide/store_comm.dart';
import './pages/splash_screen.dart';
void main(){
var  commStore=CommStore();
var providers  =Providers();

providers..provide(Provider<CommStore>.value(commStore));

runApp(ProviderNode(child: MyApp(),providers: providers,));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
    );
  }
}

