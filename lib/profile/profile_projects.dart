import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:michaeldadzie/utils/config.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import '../widgets/responsive_widget.dart';

class Projects extends StatelessWidget {
  void _createEmail() async {
    const emailaddress =
        'mailto:dadziemikke2@gmail.com?subject=Sample Subject&body=This is a Sample email';

    if (await canLaunch(emailaddress)) {
      await launch(emailaddress);
    } else {
      throw 'Could not Email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DBS(
            title1: 'Design. ',
            title2: 'Build. ',
            title3: 'Improve.',
            fontSize: 20,
          ),
          Build(
            text1: 'I build user-friendly\n',
            text2: 'Mobile Apps',
            fontSize: 60,
          ),
          SizedBox(height: 20),
          Button(text: 'Book discovery call', onPressed: _createEmail),
          Material(
            color: Theme.of(context).primaryColor,
            child: AnimatedContainer(
                width: MediaQuery.of(context).size.width - 180,
                duration: Duration(seconds: 1),
                child: Image.asset('Artboard.png')),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Project(
                  title: 'Meal Bible',
                  link: 'https://github.com/michaeldadzie/Meals-App'),
              Project(
                  title: 'Expense App',
                  link: 'https://github.com/michaeldadzie/Expense-App'),
              Project(
                  title: 'Recog',
                  link: 'https://github.com/michaeldadzie/Notes-App-UI'),
              OtherProjects(
                  title: 'See my other projects',
                  link: 'https://github.com/michaeldadzie'),
            ],
          ),
        ],
      ),
      smallScreen: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DBS(
              title1: 'Design. ',
              title2: 'Build. ',
              title3: 'Improve.',
              fontSize: 20,
            ),
            SizedBox(height: 5),
            Build(
              text1: 'I build user-friendly\n',
              text2: 'Mobile Apps',
              fontSize: 30,
            ),
            SizedBox(height: 20),
            Button(text: 'Book discovery call', onPressed: _createEmail),
            SizedBox(height: 20),
            Material(
              color: Theme.of(context).primaryColor,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width - 100,
                duration: Duration(seconds: 1),
                child: Image.asset('mb.png'),
              ),
            ),
            SizedBox(height: 20),
            OtherProjects(
                title: 'See my other projects ',
                link: 'https://github.com/michaeldadzie'),
          ],
        ),
      ),
    );
  }
}

void _createEmail() async {
  const emailaddress =
      'mailto:dadziemikke2@gmail.com?subject=Sample Subject&body=This is a Sample email';

  if (await canLaunch(emailaddress)) {
    await launch(emailaddress);
  } else {
    throw 'Could not Email';
  }
}

class Build extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontSize;
  const Build({
    @required this.text1,
    @required this.text2,
    @required this.fontSize,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: RichText(
        text: TextSpan(
          text: text1,
          style: GoogleFonts.raleway(
              fontSize: fontSize,
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: text2,
              style: GoogleFonts.raleway(
                  fontSize: fontSize,
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Button extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const Button(
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
          style: GoogleFonts.raleway(color: Colors.white, fontSize: 15),
        ),
        color: Theme.of(context).hintColor,
        onPressed: onPressed,
        highlightColor: color,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
      ),
    );
  }
}

class DBS extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final double fontSize;
  const DBS(
      {@required this.title1,
      @required this.title2,
      @required this.title3,
      @required this.fontSize,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title1,
        style: GoogleFonts.raleway(
            fontSize: fontSize, color: Theme.of(context).hintColor),
        children: [
          TextSpan(
            text: title2,
            style: GoogleFonts.raleway(
                fontSize: fontSize, color: Theme.of(context).accentColor),
          ),
          TextSpan(
            text: title3,
            style: GoogleFonts.raleway(
                fontSize: fontSize, color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}

class OtherProjects extends StatelessWidget {
  final String title;
  final String link;
  const OtherProjects({@required this.title, this.link, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => html.window.open(link, title),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: title,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor)),
            WidgetSpan(
                child: Icon(
              Icons.arrow_forward,
              size: 18,
              color: Theme.of(context).accentColor,
            )),
          ],
        ),
      ),
    );
  }
}

class Project extends StatelessWidget {
  final String title;
  final String link;
  const Project({@required this.title, this.link, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => html.window.open(link, title),
      child: Text(title,
          style: GoogleFonts.raleway(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold)),
    );
  }
}
