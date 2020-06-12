import 'package:flutter/material.dart';
import 'package:playground/models/wallpaper-model.dart';
import 'package:playground/providers/isLiked-provider.dart';
import 'package:playground/screens/image-details-screen.dart';
import 'package:provider/provider.dart';

class SavedScreenWidgets extends StatefulWidget {
  @override
  _SavedScreenWidgetsState createState() => _SavedScreenWidgetsState();
}

class _SavedScreenWidgetsState extends State<SavedScreenWidgets> {
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

          print("saved screen rebuilt");
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
                      'assets/images/yellow-1.jpg',
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.low,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: 11,
      ),
    );
  }
}
