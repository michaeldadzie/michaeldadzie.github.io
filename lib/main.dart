import 'package:flutter/material.dart';
import 'package:michaeldadzie/profile/splash_screen.dart';
import 'utils/config.dart';
import 'utils/const.dart';

main() async {
  runApp(MichaelDadzie());
}

class MichaelDadzie extends StatefulWidget {
  @override
  _MichaelDadzieState createState() => _MichaelDadzieState();
}

class _MichaelDadzieState extends State<MichaelDadzie> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {
        print('changes');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      themeMode: currentTheme.currentTheme(),
      home: SplashScreen(),
    );
  }
}
