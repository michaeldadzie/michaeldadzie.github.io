import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_about.dart';
import 'profile_footer.dart';
import 'profile_projects.dart';
import 'profile_info.dart';
import 'profile_ui_clones.dart';
import '../widgets/main_drawer.dart';
import '../widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: NavHeader(),
          ),
          // flexibleSpace: NavHeader(),
          elevation: 0.0,
          backgroundColor: Colors.black,
          iconTheme: new IconThemeData(color: Colors.red),
        ),
        drawer: ResponsiveWidget.isSmallScreen(context) ? MainDrawer() : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(20),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // NavHeader(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ProfileInfo(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  Divider(color: Colors.red, thickness: 2),
                  SizedBox(height: 20),
                  AboutMe(),
                  ProjectScreen(),
                  ProjectUI(),
                  FooterScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        width: 1000,
        child: Row(
          mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MDDot(),
            if (!ResponsiveWidget.isSmallScreen(context))
              Row(
                children: <Widget>[
//                NavButton(
//                  text: 'about',
//                  onPressed: () {},
//                ),
//                NavButton(
//                  text: 'work',
//                  onPressed: () {},
//                ),
                  NavButton(
                    text: 'contact',
                    onPressed: _createEmail,
                  ),
                ],
              )
          ],
        ),
      ),
    );
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
}

class MDDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'MD',
          textScaleFactor: 2,
          style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.bold),
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
            color: Colors.red,
          ),
        ),
      ],
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
      this.color = Colors.red})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: StadiumBorder(),
      color: Colors.red,
      child: Text(text),
      onPressed: onPressed,
      highlightColor: color,
    );
  }
}
