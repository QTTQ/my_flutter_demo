import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int reputationData = 5;
  //首页头部 box
  Widget _homeHeadBox() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(271),
      decoration: BoxDecoration(
          //  boxShadow: [BoxShadow(color: Color(0x99FFFF00), offset: Offset(5.0, 5.0),    blurRadius: 10.0, spreadRadius: 2.0), BoxShadow(color: Color(0x9900FF00), offset: Offset(1.0, 1.0)), BoxShadow(color: Color(0xFF0000FF))],
          // boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.6))],
          image: DecorationImage(
              image: AssetImage("images/bbs.png"), fit: BoxFit.cover)),
      child: Container(
        width: ScreenUtil().setWidth(750),
        height: ScreenUtil().setHeight(271),
        // color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: _headerHeadPart(),
            ),
            Expanded(
              child: _headerFollowPart(),
            )
          ],
        ),
      ),
    );
  }

// 头部 头像区域
  Widget _headerHeadPart() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.yellow,
      //     width: 1.0,
      //   ), // 边色与边宽度
      // ),
      width: ScreenUtil().setWidth(280),
      height: ScreenUtil().setHeight(271),
      child: Row(
        children: <Widget>[_headShopPortrait(), _headShopName()],
      ),
    );
  }

// 头部 头像图片
  Widget _headShopPortrait() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FadeInImage.assetNetwork(
        width: ScreenUtil().setWidth(109),
        height: ScreenUtil().setWidth(109),
        placeholder: "images/home.png",
        image:
            "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=4097669422,322996183&fm=27&gp=0.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

// 头部 头像名字
  Widget _headShopName() {
    return Container(
      width: ScreenUtil().setWidth(150),
      height: ScreenUtil().setHeight(150),
      margin: const EdgeInsets.only(left: 14.0),
      // decoration:
      //     BoxDecoration(border: Border.all(width: 1.0, color: Colors.blue)),
      child: Column(
        children: <Widget>[
          Container(
            // margin: EdgeInsets.only(left: -4),
            alignment: Alignment(-1, 0),
            // decoration: BoxDecoration(
            //     border: Border.all(width: 1.0, color: Colors.red)),
            child: Text("淘宝小店",
                style: TextStyle(fontSize: ScreenUtil().setSp(32))),
          ),
          Container(
            width: ScreenUtil().setWidth(150),
            height: ScreenUtil().setHeight(30),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(ScreenUtil().setHeight(10))),
              color: Color.fromARGB(255, 244, 244, 244),
            ),
            margin: EdgeInsets.only(
                top: ScreenUtil().setHeight(10),
                bottom: ScreenUtil().setHeight(10)),
            child: Row(
              children: <Widget>[
                Text(
                  "店铺信誉:",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(13), color: Colors.black45),
                ),
                Expanded(
                  child: _headerShopReputation(),
                  // child: Row(
                  //   children: <Widget>[
                  //     Image.asset("images/huangguan.png"),
                  //     Image.asset("images/huangguan.png")
                  //   ],
                  // ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //店铺信誉图标
  Widget _headerShopReputation() {
    List<Widget> reputationList = [];
    for (int i = 0; i < (reputationData); i++) {
      reputationList..add(Image.asset("images/huangguan.png"));
    }
    return Container(
      height: ScreenUtil().setHeight(15),
      child: Row(
        children: reputationList,
      ),
    );
  }

// 头部 关注区域
  Widget _headerFollowPart() {
    return Container(
        alignment: Alignment.centerRight,
        width: ScreenUtil().setWidth(280),
        height: ScreenUtil().setWidth(271),
        margin: EdgeInsets.only(right: ScreenUtil().setWidth(20)),
        child: Container(
          width: ScreenUtil().setWidth(135),
          height: ScreenUtil().setWidth(52),
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(
              // border: Border.all(width: 1.0, color: Colors.red),
              color: Color.fromRGBO(254, 204, 73, 1),
              borderRadius:
                  BorderRadius.all(Radius.circular(ScreenUtil().setWidth(25)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add,
                  size: ScreenUtil().setSp(26), color: Colors.black),
              Text("关注")
            ],
          ),
        ));
  }

  //首页身体 body
  Widget _homeBodyBox() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(690),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.blue),
        color: Colors.transparent,
        // image: DecorationImage(
        //     image: AssetImage("images/bg.png"), fit: BoxFit.cover)
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            _homeBodyShopNotices(),
            Text("身体"),
          ],
        ),
      ),
    );
  }

//店铺公告
  Widget _homeBodyShopNotices() {
    return Expanded(
        child: Container(
      width: ScreenUtil().setWidth(700),
      height: ScreenUtil().setHeight(211),
      decoration: BoxDecoration(
          color: Colors.blue,
          // border: Border.all(width: 20)
          borderRadius: BorderRadius.circular(ScreenUtil().setHeight(20))),
      child: Column(
        children: <Widget>[
          Text("店铺公告"),
          Text("换用光临本站换用光临本站换用光临本站换用光临本站换用光临本站换用光临本站换用光临本站换用光临本站换用光临本站换用光临本站"),
        ],
      ),
    ));
  }


//商品类型选项卡





  //首页底部 footer
  Widget _homeFooterBox() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(830),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.png"), fit: BoxFit.cover)),
      child: Container(
        child: Row(
          children: <Widget>[
            Text("zuoyouy"),
            Text("zuoyouy1"),
          ],
        ),
      ),
    );
  }

//头和body 层叠
  Widget _headerAndBodyStack() {
    return Container(
      height: ScreenUtil().setHeight(960),
      width: ScreenUtil().setWidth(750),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.red),
      ),
      child: Stack(
        alignment: Alignment(0, 0),
        children: <Widget>[
          Positioned(
            top: 0,
            child: _homeHeadBox(),
          ),
          Positioned(
            top: ScreenUtil().setHeight(200),
            child: _homeBodyBox(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Center(child: _headerAndBodyStack()),
        _homeFooterBox()
      ],
    ));
    // return Container(child: _homeHeadBox());
  }
}
