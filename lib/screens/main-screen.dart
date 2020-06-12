import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/providers/selectedIndex-provider.dart';
import 'package:provider/provider.dart';

import 'file:///D:/LEWY/Dev/Projects/ROUGH/Flutter/playground/lib/widgets/main-screen-widgets/bottom-navigation.dart';
import 'file:///D:/LEWY/Dev/Projects/ROUGH/Flutter/playground/lib/widgets/main-screen-widgets/home-screen-widgets.dart';
import 'file:///D:/LEWY/Dev/Projects/ROUGH/Flutter/playground/lib/widgets/main-screen-widgets/saved-screen-widgets.dart';
import 'file:///D:/LEWY/Dev/Projects/ROUGH/Flutter/playground/lib/widgets/main-screen-widgets/settings-screen-widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //pages
  List<Widget> pages = <Widget>[
    HomeScreenWidgets(),
    SavedScreenWidgets(),
    Settings(),
  ];

  //page titles
  final List<String> title = [
    'Wallpaper',
    'Saved',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    print("main screen built");

    //providers
    var selectionIndicator = Provider.of<SelectedIndexProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: CustomScrollView(
          slivers: <Widget>[
            //appbar
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              elevation: 0.0,
              floating: true,
              title: Text(
                selectionIndicator.setToSelectedIndex == 0
                    ? 'Wallpaper'
                    : selectionIndicator.setToSelectedIndex == 1 ? 'Saved' : 'Settings',
                style: TextStyle(
                  letterSpacing: 0.5,
                ),
              ),
            ),

            //screens
            pages.elementAt(selectionIndicator.setToSelectedIndex)
          ],
        ),

        //bottom nav
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
