import 'package:flutter/material.dart';
import 'package:playground/providers/selectedIndex-provider.dart';
import 'package:playground/screens/main-screen.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'providers/isLiked-provider.dart';

void main() => runApp(
      MultiProvider(
        providers: <SingleChildWidget>[
          ChangeNotifierProvider(create: (BuildContext context) => IsLikedProvider()),
          ChangeNotifierProvider(create: (BuildContext context) => SelectedIndexProvider()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      onGenerateRoute: (RouteSettings settings) {
        //path
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        }

        switch (pathElements[1]) {

          //home screen
          case 'homeScreen':
            return MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen(),
            );
        }

        return null;
      },
    );
  }
}

//---------------------------------------------------------------------------------------------------------------
