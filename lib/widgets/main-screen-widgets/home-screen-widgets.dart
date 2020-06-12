import 'package:flutter/material.dart';
import 'package:playground/models/wallpaper-model.dart';
import 'package:playground/providers/isLiked-provider.dart';
import 'package:playground/screens/image-details-screen.dart';
import 'package:provider/provider.dart';

class HomeScreenWidgets extends StatefulWidget {
  @override
  _HomeScreenWidgetsState createState() => _HomeScreenWidgetsState();
}

class _HomeScreenWidgetsState extends State<HomeScreenWidgets> {
  @override
  Widget build(BuildContext context) {
    var likeIndicator = Provider.of<IsLikedProvider>(context);

    //images grid
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 1.0,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        maxCrossAxisExtent: 200,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          Wallpaper wallpaper = wallpapers[index];
          print("home screen rebuilt");
          print("grid built");
          return Container(
            height: 180.0,
            width: 200.0,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                //image
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ImageDetails(wallpaper: wallpaper)));

                  },
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset(
                      'assets/images/yellow-${wallpaper.imageNo}.jpg',
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.low,
                    ),
                  ),
                ),

                //like
                Positioned(
                  right: 5.0,
                  top: 0.0,
                  child: Container(
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(0, 1),
                          color: Colors.white12,
                        ),
                      ],
                    ),
                    child: IconButton(
                      alignment: Alignment.center,
                      iconSize: 15.0,
                      color: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        likeIndicator.setToLikedWallpaper = !likeIndicator.setToLikedWallpaper;
                      },
                      icon: !likeIndicator.setToLikedWallpaper
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_border, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: wallpapers.length,
      ),
    );
  }
}
