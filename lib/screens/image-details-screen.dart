import 'package:flutter/material.dart';
import 'package:playground/models/wallpaper-model.dart';

class ImageDetails extends StatefulWidget {
  final Wallpaper wallpaper;
  ImageDetails({Key key, this.wallpaper});

  @override
  _ImageDetailsState createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.favorite),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            //image
            Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/yellow-${widget.wallpaper.imageNo}.jpg',
                fit: BoxFit.cover,
              ),
            ),

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
                          ' ${widget.wallpaper.name} ',
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
                            " Show Name ",
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
                          ' ${widget.wallpaper.photographer} ',
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
                            " Show Photographer ",
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

            //location
            Container(
              color: Color(0xffFFF399),
              height: 64.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //location
                    Container(
                      height: 32.0,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: FittedBox(
                        child: Text(
                          ' ${widget.wallpaper.location} ',
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    //show location
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
                            " Show Location ",
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

            //details
            Container(
              color: Color(0xffFFF9CC),
              height: 64.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //details
                    Container(
                      height: 32.0,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: FittedBox(
                        child: Text(
                          ' ',
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),

                    //show details
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
                            " Show Details ",
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
      ),
    );
  }
}
