import 'package:flutter/material.dart';
import 'package:playground/providers/selectedIndex-provider.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //provider
    var selectionIndicator = Provider.of<SelectedIndexProvider>(context);
    //nav
    return BottomNavigationBar(
      currentIndex: SelectedIndexProvider.selectedIndex,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      onTap: (int selectedItem) {
        print(selectedItem);
        selectionIndicator.setToSelectedIndex = selectedItem;
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.wallpaper, size: 26.0),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border, size: 26.0),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, size: 26.0),
          title: SizedBox.shrink(),
        ),
      ],
    );
  }
}
