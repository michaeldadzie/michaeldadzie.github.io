import 'package:flutter/material.dart';
import '../widgets/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../profile/profile_footer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.black26,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('md.png'),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  static void createEmail() async {
    const emailaddress =
        'mailto:dadziemikke2@gmail.com?subject=Sample Subject&body=Got a project? let\'s talk';

    if (await canLaunch(emailaddress)) {
      await launch(emailaddress);
    } else {
      throw 'Could not Email';
    }
  }

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Hi there! I\'m',
        textScaleFactor: 2,
        style: GoogleFonts.raleway(fontSize: 20, color: Colors.red),
      ),
      Text('Michael\nDadzie',
          style: GoogleFonts.raleway(
              fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
      ),
      Text(
        'A Freelance Flutter Developer\n',
        softWrap: true,
        textScaleFactor: 1.5,
        style: GoogleFonts.raleway(color: Colors.white70),
      ),
      Row(
        children: [SocialAccounts()],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            shape: StadiumBorder(),
            child: Text(
              'Resume',
              style: GoogleFonts.raleway(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            shape: StadiumBorder(),
            child: Text(
              'Connect',
              style: GoogleFonts.raleway(color: Colors.red),
            ),
            onPressed: createEmail,
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData,
        ],
      ),
    );
  }
}
