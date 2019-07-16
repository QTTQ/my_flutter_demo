import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import './home.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provide/provide.dart';
import '../provide/comm.dart';
import '../utils/event_bus.dart';

class IndexPage extends StatefulWidget {
  final Widget child;

  IndexPage({Key key, this.child}) : super(key: key);

  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  Widget currentPage;

  List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        backgroundColor: Colors.red,
        icon: Image.asset(
          'images/home_ico.png',
          width: 88.0,
          height: 18.0,
        ),
        activeIcon: Image.asset(
          'images/home.png',
          width: 18.0,
          height: 18.0,
        ),
        title: Text('首页')),
    BottomNavigationBarItem(
        icon: Image.asset(
          'images/bbs_ico.png',
          width: 18.0,
          height: 18.0,
        ),
        activeIcon: Image.asset(
          'images/bbs.png',
          width: 18.0,
          height: 18.0,
        ),
        title: Text('社区')),
    BottomNavigationBarItem(
        icon: Image.asset(
          'images/message_ico.png',
          width: 18.0,
          height: 18.0,
        ),
        activeIcon: Image.asset(
          'images/message.png',
          width: 18.0,
          height: 18.0,
        ),
        title: Text('消息')),
    BottomNavigationBarItem(
        icon: Image.asset(
          'images/person_ico.png',
          width: 18.0,
          height: 18.0,
        ),
        activeIcon: Image.asset(
          'images/person.png',
          width: 18.0,
          height: 18.0,
        ),
        title: Text('个人中心'))
  ];
  final List<Widget> tabBodies = [
    HomePage(),
    // CommunityPage(),
    // NewsPage(),
    // PersonalCenter()
  ];

  @override
  void initState() {
    currentPage = tabBodies[_currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1920)..init(context);
    // eventBus.on<UserLoggedInEvent>().listen((event) {
    //   print(event.text);
    // });
    return Scaffold(
      // backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10),
        child: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              print('FloatingActionButton');
            },
            backgroundColor: Colors.yellow),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      // bottomNavigationBar: PreferredSize(
      //   preferredSize: Size.fromHeight(ScreenUtil().setHeight(50)),
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.white,
      //     iconSize: 18.0, //并不好使用
      //     elevation: 8.0,
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: _currentIndex,
      //     // items: bottomTabs,
      //     items: bottomTabs,
      //     unselectedItemColor: Colors.black,
      //     selectedFontSize: 15.0,
      //     unselectedFontSize: 15.0,
      //     fixedColor: Colors.black,
      //     onTap: (index) {
      //       setState(() {
      //         _currentIndex = index;
      //         currentPage = tabBodies[_currentIndex];
      //         // eventBus.fire(UserLoggedInEvent('Mickey'));
      //         Provide.value<CommStore>(context).increment();
      //       });
      //     },
      //   ),
      // ),
      body: IndexedStack(
        index: _currentIndex,
        children: tabBodies,
      ),
    );
  }
}
