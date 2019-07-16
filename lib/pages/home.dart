import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../service/service_method.dart';
import '../model/goods_list_obj.dart';
import 'dart:developer';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<dynamic> _getGoodsListFunc() async {
    try {
      // Response res = await requestHttpFunc("get", "goods_goods_url");
      Map res = await requestHttpFunc("get", "goods_goods_url");
      return res;
      // return await requestHttpFunc("get", "goods_goods_url");
      // dynamic data = GoodsListObj.fromJson(res);
      // return data;
    } catch (e) {
      print(e);
      return null;
    }
  }

  List goodsList = [];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          ..init(context);
    return Container(
      child: FutureBuilder(
        future: _getGoodsListFunc(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return ListView(
            children: <Widget>[
              _headerBoxFunc(),
              _bodyBoxFunc(),
              _footerBoxFunc(snapshot.data["results"]),
            ],
          );
        },
      ),
    );
  }

  //header box
  Widget _headerBoxFunc() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(440),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text("头像"),
                Text("搜索"),
                Text("关注"),
              ],
            ),
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }

  //body box
  Widget _bodyBoxFunc() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(440),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Text("body"),
    );
  }

  //footer box
  Widget _footerBoxFunc(List listData) {
    return Container(
      width: ScreenUtil().setWidth(750),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Column(
        children: <Widget>[
          // _goodsTitle(),
          _goodsDescBox(listData),
        ],
      ),
    );
  }

  //商品 标题
  Widget _goodsTitle() {
    return Container(
      child: Row(
        children: <Widget>[Text("合作主播"), Text("更多")],
      ),
    );
  }

  //商品详情
  Widget _goodsDescBox(List listData) {
    if (listData.length != 0) {
      List<Widget> listWidget = listData.map((val) {
        print(val);
        return InkWell(
            onTap: () {
              print('点击了火爆商品');
            },
            child: Container(
              width: ScreenUtil().setWidth(360),
              color: Colors.white,
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.only(bottom: 3.0),
              child: Column(
                children: <Widget>[
                  Image.network(
                    val['goods_front_image'],
                    width: ScreenUtil().setWidth(375),
                  ),
                  Text(
                    val['title'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.pink, fontSize: ScreenUtil().setSp(26)),
                  ),
                  Row(
                    children: <Widget>[
                      Text('￥${val['user']}'),
                      Text(
                        '￥${val['role_level']}',
                        style: TextStyle(
                            color: Colors.black26,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  )
                ],
              ),
            ));
      }).toList();

      return Wrap(
        spacing: 2,
        children: listWidget,
      );
    } else {
      return Text(' ');
    }
  }
}
