import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:michaeldadzie/profile/profile_page.dart';

import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double endSize = 2.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() => endSize = 1000);
      Future.delayed(Duration(milliseconds: 300), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: Theme.of(context).hintColor,
        alignment: Alignment.center,
        child: TweenAnimationBuilder(
          curve: Curves.easeInOut,
          tween: Tween<double>(begin: 80, end: 2),
          duration: Duration(milliseconds: 2000),
          builder: (context, size, child) {
            return Transform.scale(scale: size, child: child);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MD',
                style: GoogleFonts.raleway(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).indicatorColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
