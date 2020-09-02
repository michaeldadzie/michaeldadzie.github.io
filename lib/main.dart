import 'package:flutter/material.dart';
import 'profile/profile_page.dart';

main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.red,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        canvasColor: Colors.white,
      ),
      home: ProfilePage(),
    );
  }
}
