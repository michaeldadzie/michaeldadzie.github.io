import 'package:flutter/material.dart';
import '../widgets/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../profile/profile_footer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 2),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('mnkd.png'),
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
        style: GoogleFonts.raleway(fontSize: 20, color: Vx.red700),
      ),
      Text('Michael\nDadzie',
          style: GoogleFonts.raleway(
              fontSize: 60, color: Colors.black, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
      ),
      Text(
        'A Freelance Flutter Developer\n',
        softWrap: true,
        textScaleFactor: 1.5,
        style: GoogleFonts.raleway(color: Colors.grey),
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
            color: Vx.red700,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            shape: StadiumBorder(),
            child: Text(
              'Connect',
              style: GoogleFonts.raleway(color: Vx.red700),
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
