import 'package:flutter/material.dart';

import 'MyColor.dart';
import 'default_button.dart';

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
        new Expanded(
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Container(
              padding: EdgeInsets.all(8),
              color: MyColors.hdb_grey300,
              alignment: Alignment.centerRight,
              child: Text(
                "100 * 100",
                key: Key("input"),
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(color: MyColors.hdb_grey800, decoration: TextDecoration.none, fontSize: 26, fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        new Expanded(
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DefaultButton(
                    "C",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "del",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "%",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "/",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_yellow700,
                    activeBackgroundColor: MyColors.hdb_yellow800,
                  ),
                ),
              ],
            ),
          ),
        ),
        new Expanded(
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DefaultButton(
                    "7",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "8",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "9",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "X",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_yellow700,
                    activeBackgroundColor: MyColors.hdb_yellow800,
                  ),
                ),
              ],
            ),
          ),
        ),
        new Expanded(
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DefaultButton(
                    "4",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "5",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "6",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "-",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_yellow700,
                    activeBackgroundColor: MyColors.hdb_yellow800,
                  ),
                ),
              ],
            ),
          ),
        ),
        new Expanded(
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DefaultButton(
                    "1",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "2",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "3",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "+",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_yellow700,
                    activeBackgroundColor: MyColors.hdb_yellow800,
                  ),
                ),
              ],
            ),
          ),
        ),
        new Expanded(
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: DefaultButton(
                    "0",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    ".",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_grey700,
                    activeBackgroundColor: MyColors.hdb_grey800,
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    "=",
                    radius: 0,
                    textSize: 26,
                    width: double.infinity,
                    border: Border(
                      left: BorderSide(color: MyColors.hdb_grey800, width: 1),
                    ),
                    minHeight: double.infinity,
                    backgroundColor: MyColors.hdb_yellow700,
                    activeBackgroundColor: MyColors.hdb_yellow800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
