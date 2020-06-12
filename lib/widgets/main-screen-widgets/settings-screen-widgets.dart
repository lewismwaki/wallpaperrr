import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Column(
            children: <Widget>[
              //name
              Container(
                color: Color(0xffFFF399),
                height: 64.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //name
                      Container(
                        height: 32.0,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: FittedBox(
                          child: Text(
                            ' Color ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ),
                      //show name
                      FlatButton(
                        onPressed: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        padding: EdgeInsets.all(0),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                          ),
                          child: FittedBox(
                            child: Text(
                              " Change Color ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //photographer
              Container(
                color: Color(0xffFFF9CC),
                height: 64.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //photographer
                      Container(
                        height: 32.0,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: FittedBox(
                          child: Text(
                            ' Display Mode ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ),
                      //show photographer
                      FlatButton(
                        onPressed: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        padding: EdgeInsets.all(0),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                          ),
                          child: FittedBox(
                            child: Text(
                              " Change Display Mode ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 20.0,
            width: 20.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
