import 'package:flutter/material.dart';

import 'MyColor.dart';

///
/// File Name
///
/// @author liujie https://github.com/Handy045
/// @description File Description
/// @date Created in 2018/11/12 9:14 AM
///
class view extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new viewState();
  }
}

class viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            constraints: BoxConstraints.expand(width: double.infinity),
            color: MyColors.hdb_grey800,
            child: Text(
              "0",
              key: Key("result"),
              maxLines: 1,
              style: TextStyle(color: MyColors.hdb_white, decoration: TextDecoration.none, fontSize: 65, fontWeight: FontWeight.bold),
            ),
          ),
          flex: 2,
        ),
        new Divider(
          height: 0.5,
          color: MyColors.hdb_grey500,
        ),
        new Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            color: MyColors.hdb_grey700,
            constraints: BoxConstraints.expand(width: double.infinity),
            alignment: Alignment.centerRight,
            child: Text(
              "100 * 100",
              key: Key("input"),
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: TextStyle(color: MyColors.hdb_white, decoration: TextDecoration.none, fontSize: 26, fontWeight: FontWeight.normal),
            ),
          ),
        ),
        new Divider(
          height: 0.5,
          color: MyColors.hdb_grey500,
        ),
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(8),
            color: MyColors.hdb_grey600,
          ),
        ),
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(8),
            color: MyColors.hdb_grey600,
          ),
        ),
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(8),
            color: MyColors.hdb_grey600,
          ),
        ),
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(8),
            color: MyColors.hdb_grey600,
          ),
        ),
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(8),
            color: MyColors.hdb_grey600,
          ),
        ),
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(8),
            color: MyColors.hdb_grey600,
          ),
        ),
      ],
    );
  }
}
