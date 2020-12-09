import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tech_in_swetha/GobalVariables.dart';
import 'package:tech_in_swetha/MovingAveragesVariables.dart';
import 'package:tech_in_swetha/PivotPointVariables.dart';
import 'package:tech_in_swetha/TechnicalIndicatorsVariables.dart';

class TechnicalIndicators extends StatefulWidget {
  @override
  _TechnicalIndicators createState() => _TechnicalIndicators();
}

class _TechnicalIndicators extends State<TechnicalIndicators> {
  Widget i;
  List<bool> _one = [false];
  List<bool> _two = [false];
  List<bool> _three = [false];
  List<bool> _four = [false];
  List<bool> _five = [false];
  List<bool> _six = [false];
  List<bool> _seven = [false];
  List<bool> _eight = [false];
  List<bool> _nine = [false];
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  bool v4 = false;
  bool v5 = false;
  String maconst = "Buy";
  String ticonst = "Strong Sell";

  List<Widget> mvData = [];
  List<Widget> tiData = [];
  List<Widget> ppData = [];
  void getPostsDataPP() {
    List<dynamic> responseList = PP_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        height: 28,
        width: 386,
        color: Colors.transparent,
        child: Align(
            alignment: Alignment(0, 0),
            child: Table(
              children: [
                TableRow(children: <Widget>[
                  Align(
                    alignment: Alignment(-0.75, 0),
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        post["1"],
                        style: TextStyle(
                          color: Color(
                            0xff121212,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "IBM Plex Sans",
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.75, 0),
                    child: Text(
                      post["2"],
                      style: TextStyle(
                        color: Color(
                          0xff121212,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBM Plex Sans",
                      ),
                    ),
                  ),
                ])
              ],
            )),
      ));
    });
    setState(() {
      ppData = listItems;
    });
  }

  void getPostsDataTI() {
    List<dynamic> responseList = TI_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        height: 28,
        width: 386,
        color: Colors.transparent,
        child: Align(
            alignment: Alignment(0, 0),
            child: Table(
              children: [
                TableRow(children: <Widget>[
                  Align(
                    alignment: Alignment(-0.5, 0),
                    child: Text(
                      post["name"],
                      style: TextStyle(
                        color: Color(
                          0xff121212,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBM Plex Sans",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      post["action"],
                      style: TextStyle(
                        color: Color(
                          0xff121212,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBM Plex Sans",
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.5, 0),
                      child: (post["value"] == "Sell") == true
                          ? new Text(
                              post["value"],
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            )
                          : (post["value"] == "Buy") == true
                              ? new Text(
                                  post["value"],
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "IBM Plex Sans",
                                  ),
                                )
                              : (post["value"] == "Neutral") == true
                                  ? new Text(
                                      post["value"],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "IBM Plex Sans",
                                      ),
                                    )
                                  : new Text(
                                      post["value"],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "IBM Plex Sans",
                                      ),
                                    ))
                ])
              ],
            )),
      ));
    });
    setState(() {
      tiData = listItems;
    });
  }

  void getPostsDataMAV() {
    List<dynamic> responseList = MAV_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        height: 28,
        width: 386,
        color: Colors.transparent,
        child: Align(
            alignment: Alignment(0, 0),
            child: Table(
              children: [
                TableRow(children: <Widget>[
                  Align(
                    alignment: Alignment(-0.5, 0),
                    child: Text(
                      post["title"],
                      style: TextStyle(
                        color: Color(
                          0xff121212,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBM Plex Sans",
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      post["value"],
                      style: TextStyle(
                        color: Color(
                          0xff121212,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBM Plex Sans",
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.5, 0),
                      child: (post["type"] == "SELL") == true
                          ? Text(
                              post["type"],
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            )
                          : new Text(
                              post["type"],
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ))
                ])
              ],
            )),
      ));
    });
    setState(() {
      mvData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsDataMAV();
    getPostsDataTI();
    getPostsDataPP();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              Container(
                height: 24,
                width: MediaQuery.of(context).copyWith().size.width,
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).copyWith().size.width,
                child: Align(
                    alignment: Alignment(-1, 0),
                    child: Row(children: <Widget>[
                      SizedBox(width: 16),
                      Image.asset('assets/images/AppBar/BackArrow.png'),
                      SizedBox(width: 32),
                      Image.asset('assets/images/AppBar/Sensex.png'),
                    ])),
              ),
              DropDownSensex(),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Summary/Summary.png'),
              ),
              Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 44),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      v1 = true;
                                      v2 = false;
                                      v3 = false;
                                      v4 = false;
                                      v5 = false;
                                    });
                                  },
                                  child: Image.asset(
                                      'assets/images/Summary/Strong Buy.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      v1 = false;
                                      v2 = true;
                                      v3 = false;
                                      v4 = false;
                                      v5 = false;
                                    });
                                  },
                                  child: Image.asset(
                                      'assets/images/Summary/Buy.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      v1 = false;
                                      v2 = false;
                                      v3 = true;
                                      v4 = false;
                                      v5 = false;
                                    });
                                  },
                                  child: Image.asset(
                                      'assets/images/Summary/Neutral.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      v1 = false;
                                      v2 = false;
                                      v3 = false;
                                      v4 = true;
                                      v5 = false;
                                    });
                                  },
                                  child: Image.asset(
                                      'assets/images/Summary/Sell.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      v1 = false;
                                      v2 = false;
                                      v3 = false;
                                      v4 = false;
                                      v5 = true;
                                    });
                                  },
                                  child: Image.asset(
                                      'assets/images/Summary/Strong Sell.png'),
                                ),
                              ],
                            )
                          ]),
                    ],
                  ),
                  Positioned(
                    top: -10,
                    left: 16,
                    child: Visibility(
                        maintainState: false,
                        visible: v1,
                        child: Image.asset(
                            'assets/images/Summary/StrongBuyDialog.png')),
                  ),
                  Positioned(
                    top: 56,
                    left: 16,
                    child: Visibility(
                        maintainState: false,
                        visible: v2,
                        child:
                            Image.asset('assets/images/Summary/BuyDialog.png')),
                  ),
                  Positioned(
                    top: 122,
                    left: 16,
                    child: Visibility(
                        maintainState: false,
                        visible: v3,
                        child: Image.asset(
                            'assets/images/Summary/NeutralDialog.png')),
                  ),
                  Positioned(
                    top: 188,
                    left: 16,
                    child: Visibility(
                        maintainState: false,
                        visible: v4,
                        child: Image.asset(
                            'assets/images/Summary/SellDialog.png')),
                  ),
                  Positioned(
                    top: 254,
                    left: 16,
                    child: Visibility(
                        maintainState: false,
                        visible: v5,
                        child: Image.asset(
                            'assets/images/Summary/StrongSellDialog.png')),
                  ),
                  Positioned(
                    top: 10,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _one,
                        children: <Widget>[
                          Text(
                            "1 MIN",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _one[index] = !_one[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 45,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _two,
                        children: <Widget>[
                          Text(
                            "5 MIN",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _two[index] = !_two[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 80,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _three,
                        children: <Widget>[
                          Text(
                            "15 MIN",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _three[index] = !_three[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 115,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _four,
                        children: <Widget>[
                          Text(
                            "30 MIN",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _four[index] = !_four[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 150,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _five,
                        children: <Widget>[
                          Text(
                            "1 HR",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _five[index] = !_five[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 185,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _six,
                        children: <Widget>[
                          Text(
                            "5 HR",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _six[index] = !_six[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 220,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _seven,
                        children: <Widget>[
                          Text(
                            "1 DAY",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _seven[index] = !_seven[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 255,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _eight,
                        children: <Widget>[
                          Text(
                            "1 WK",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _eight[index] = !_eight[index];
                          });
                        }),
                  ),
                  Positioned(
                    top: 290,
                    right: 16,
                    child: ToggleButtons(
                        fillColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        constraints: BoxConstraints(
                            minWidth: 56,
                            minHeight: 28,
                            maxHeight: 28,
                            maxWidth: 56),
                        borderWidth: 3,
                        borderColor: Colors.transparent,
                        selectedBorderColor: Colors.black,
                        isSelected: _nine,
                        children: <Widget>[
                          Text(
                            "1 MON",
                            style: TextStyle(
                              color: Color(
                                0xff121212,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ],
                        onPressed: (index) {
                          setState(() {
                            _nine[index] = !_nine[index];
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                    'assets/images/MovingAverages/Moving Averages.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(maconst),
                      ));
                    },
                    splashColor: Colors.grey,
                    hoverColor: Colors.brown,
                    child: Container(
                        width: 48,
                        height: 28,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            maconst,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ))),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/MovingAverages/Stats.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: DropDownExponential(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                height: 28,
                width: 386,
                color: Color.fromRGBO(0, 0, 0, 0.1),
                child: Align(
                    alignment: Alignment(0, 0),
                    child: Table(
                      children: [
                        TableRow(children: <Widget>[
                          Align(
                            alignment: Alignment(-0.5, 0),
                            child: Text(
                              "TITLE",
                              style: TextStyle(
                                color: Color(
                                  0xff121212,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              "VALUE",
                              style: TextStyle(
                                color: Color(
                                  0xff121212,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.5, 0),
                            child: Text(
                              "TYPE",
                              style: TextStyle(
                                color: Color(
                                  0xff121212,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ),
                          )
                        ])
                      ],
                    )),
              ),
              for (i in (mvData)) i,
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                    'assets/images/TechnicalIndicators/Technical Indicators.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(maconst),
                      ));
                    },
                    splashColor: Colors.grey,
                    hoverColor: Colors.brown,
                    child: Container(
                        width: 88,
                        height: 28,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            ticonst,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "IBM Plex Sans",
                            ),
                          ),
                        ))),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child:
                    Image.asset('assets/images/TechnicalIndicators/Stats.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                height: 28,
                width: 386,
                color: Color.fromRGBO(0, 0, 0, 0.1),
                child: Align(
                    alignment: Alignment(0, 0),
                    child: Table(
                      children: [
                        TableRow(children: <Widget>[
                          Align(
                            alignment: Alignment(-0.5, 0),
                            child: Text(
                              "NAME",
                              style: TextStyle(
                                color: Color(
                                  0xff121212,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              "ACTION",
                              style: TextStyle(
                                color: Color(
                                  0xff121212,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.5, 0),
                            child: Text(
                              "VALUE",
                              style: TextStyle(
                                color: Color(
                                  0xff121212,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM Plex Sans",
                              ),
                            ),
                          )
                        ])
                      ],
                    )),
              ),
              for (i in (tiData)) i,
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child:
                    Image.asset('assets/images/PivotPoints/Pivot Points.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: DropDownClassic(),
              ),
              SizedBox(
                height: 20,
              ),
              for (i in ppData) i
            ]),
          ],
        ));
  }
}
