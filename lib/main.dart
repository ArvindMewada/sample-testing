import 'package:flutter/material.dart';
import 'package:sample/Widgets/DetailsScreenWidget.dart';
import 'package:sample/Screens/HomeScreen.dart';

import 'Screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    //Initial
    SplashScreen.routeName: (context) => SplashScreen(),
    HomeScreen.routeName: (context) => HomeScreen(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sample',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes,
    );
  }
}


