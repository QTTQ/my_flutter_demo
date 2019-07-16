import 'package:flutter/material.dart';
import '../model/User.dart';
import '../utils/db_helper.dart';

class PersonalCenter extends StatefulWidget {
  final Widget child;

  PersonalCenter({Key key, this.child}) : super(key: key);

  _PersonalCenterState createState() => _PersonalCenterState();
}

class _PersonalCenterState extends State<PersonalCenter> {
  // List _list;
  @override
  void initState() {
    DataBase myDb = new DataBase();
    Future list = myDb.query();
    print(list.then((_) {
      print("这里" + _.toString());
      // setState(() {
      //   _list = _;
      // });
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("个人中心"),
    );
  }
//  List<User> _datas = new List();
//   Future<Null> _refresh() async {
//     _query();
//   }
//   //添加
//   Future<Null> _add() async {
//     User user = new User();
//     user.name = "我是增加的";
//     user.age = 33;
//     await db.saveItem(user);
//     _query();
//   }

// //删除,默认删除第一条数据
//   Future<Null> _delete() async {
//     List datas = await db.getTotalList();
//     if (datas.length > 0) {
//       //修改第一条数据
//       User user = User.fromMap(datas[0]);
//       db.deleteItem(user.id);
//       _query();
//     }
//   }

// //修改，默认修改第一条数据
//   Future<Null> _update() async {
//     List datas = await db.getTotalList();
//     if (datas.length > 0) {
//       //修改第一条数据
//       User u = User.fromMap(datas[0]);
//       u.name = "我被修改了";
//       db.updateItem(u);
//       _query();
//     }
//   }

// //查询
//   Future<Null> _query() async {
//     _datas.clear();
//     List datas = await db.getTotalList();
//     if (datas.length > 0) {
//       //数据库有数据
//       datas.forEach((user) {
//         User dataListBean = User.fromMap(user);
//         _datas.add(dataListBean);
//       });
//     }
//     setState(() {});
//   }
}
