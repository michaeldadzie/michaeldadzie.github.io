import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MDDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'MD',
          textScaleFactor: 2,
          style: GoogleFonts.raleway(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor),
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
            color: Theme.of(context).hintColor,
          ),
        ),
        SizedBox(width: 45)
      ],
    );
  }
}
