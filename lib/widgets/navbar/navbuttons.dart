import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class NavButtons extends StatelessWidget {
  final text;
  final onPressed;

  const NavButtons({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: GoogleFonts.raleway(color: Theme.of(context).hintColor),
      ),
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      highlightColor: Colors.white,
      splashColor: Colors.white,
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Vx.red700})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FlatButton(
        child: Text(
          text,
          style: GoogleFonts.raleway(color: Colors.white),
        ),
        color: Theme.of(context).hintColor,
        onPressed: onPressed,
        highlightColor: color,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
      ),
    );
  }
}
