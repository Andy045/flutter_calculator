import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator/Calculation.dart';
import 'package:flutter_calculator/utils/MyColors.dart';
import 'package:flutter_calculator/widgets/DefaultButton.dart';

///
/// File Name
///
/// @author liujie https://github.com/Handy045
/// @description File Description
/// @date Created in 2018/11/12 9:14 AM
///
class HomePage extends StatefulWidget {
  String _formulaData = "";
  String _resultData = "";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: MyColors.hdb_grey800,
      child: new Column(
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
                  widget._formulaData,
                  key: Key("input"),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(color: MyColors.hdb_grey800, decoration: TextDecoration.none, fontSize: 26, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          Expanded(
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
                      onPress: () {
                        setState(() {
                          widget._resultData = "0";
                          widget._formulaData = "";
                        });
                      },
                      margin: EdgeInsets.only(top: 1.5),
                      padding: EdgeInsets.only(left: 1.5, right: 1.5, bottom: 1.5),
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
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "%",
                      onPress: () {
                        setState(() {
                          widget._formulaData = Calculation.symbolPress(widget._formulaData, "%");
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "/",
                      onPress: () {
                        setState(() {
                          widget._formulaData = Calculation.symbolPress(widget._formulaData, "/");
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_yellow700,
                      activeBackgroundColor: MyColors.hdb_yellow800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DefaultButton(
                      "7",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "7";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 1.5),
                      padding: EdgeInsets.only(left: 1.5, right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "8",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "8";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "9",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "9";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "*",
                      onPress: () {
                        setState(() {
                          widget._formulaData = Calculation.symbolPress(widget._formulaData, "*");
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_yellow700,
                      activeBackgroundColor: MyColors.hdb_yellow800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DefaultButton(
                      "4",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "4";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 1.5),
                      padding: EdgeInsets.only(left: 1.5, right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "5",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "5";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "6",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "6";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "-",
                      onPress: () {
                        setState(() {
                          widget._formulaData = Calculation.symbolPress(widget._formulaData, "-");
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
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
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DefaultButton(
                      "1",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "1";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 1.5),
                      padding: EdgeInsets.only(left: 1.5, right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "2",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "2";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "3",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "3";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "+",
                      onPress: () {
                        setState(() {
                          widget._formulaData = Calculation.symbolPress(widget._formulaData, "+");
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
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
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: DefaultButton(
                      "0",
                      onPress: () {
                        setState(() {
                          widget._formulaData += "0";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 1.5),
                      padding: EdgeInsets.only(left: 1.5, right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      ".",
                      onPress: () {
                        setState(() {
                          widget._formulaData += ".";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      minHeight: double.infinity,
                      backgroundColor: MyColors.hdb_grey700,
                      activeBackgroundColor: MyColors.hdb_grey800,
                    ),
                  ),
                  Expanded(
                    child: DefaultButton(
                      "=",
                      onPress: () {
                        setState(() {
                          widget._formulaData += " = ";
                        });
                      },
                      radius: 0,
                      textSize: 26,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 1.5, top: 1.5),
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
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
      ),
    );
  }
}
