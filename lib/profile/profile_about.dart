import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedPadding(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.all(20),
          child: Container(
            height: 300,
            width: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'About Me',
                  style: GoogleFonts.raleway(
                      fontSize: 60, fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(
                      text:
                          'I am an avid open source developer, experienced with all the \n',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text:
                                'stages of development cycle for dynamic Mobile Application Projects.\n',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.white)),
                        TextSpan(
                            text:
                                'Well versed in these programming languages; ',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.white)),
                        TextSpan(
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () => html.window.open(
                                  'https://www.oracle.com/java/technologies/javase-downloads.html',
                                  'Java'),
                            text: 'Java, ',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.orange)),
                        TextSpan(
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () => html.window
                                  .open('https://www.python.org/', 'python'),
                            text: 'Python ',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.amber)),
                        TextSpan(
                            text: 'and ',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.white)),
                        TextSpan(
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () =>
                                  html.window.open('https://dart.dev/', 'dart'),
                            text: 'Dart.\n',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.blueAccent)),
                        TextSpan(
                            text: 'I am a member of the ',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.white)),
                        TextSpan(
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () => html.window.open(
                                  'https://app.slack.com/client/TLD741P9D/CM3STSHV4',
                                  'flutter'),
                            text: 'Flutter Ghana Community',
                            style: GoogleFonts.raleway(
                                fontSize: 20, color: Colors.blue)),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
