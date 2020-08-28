import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../widgets/responsive_widget.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              InkWell(
                onTap: _createEmail,
                child: 'dadziemikke@gmail.com'
                    .text
                    .color(Colors.redAccent)
                    .semiBold
                    .make()
                    .box
                    .border(color: Colors.redAccent)
                    .p16
                    .rounded
                    .make(),
              )
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.widthBox,
              InkWell(
                onTap: _createEmail,
                child: 'dadziemikke2@gmail.com'
                    .text
                    .color(Colors.redAccent)
                    .semiBold
                    .make()
                    .box
                    .border(color: Colors.redAccent)
                    .p16
                    .rounded
                    .make(),
              )
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        MDot(),
        10.heightBox,
        Thanks(),
        10.heightBox,
        SocialAccounts(),
        10.heightBox,
        Afrobeezy(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }

  void _createEmail() async {
    const emailaddress =
        'mailto:dadziemikke2@gmail.com?subject=Sample Subject&body=Got a project? let\'s talk';

    if (await canLaunch(emailaddress)) {
      await launch(emailaddress);
    } else {
      throw 'Could not Email';
    }
  }
}

class MDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'MD',
            textScaleFactor: 2,
            style:
                GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/michaeldadzie_");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://instagram.com/afrobeezyy");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/michael-dadzie-9b466b181/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/michaeldadzie");
      }).make()
    ].hStack();
  }
}

class Afrobeezy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Michael Dadzie ©2020',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Michael Dadzie ©2020',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: 'Thanks for visiting, ',
                style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),
                children: [
                  TextSpan(
                      text: 'Hear from you soon.',
                      style:
                          GoogleFonts.raleway(fontSize: 20, color: Colors.grey))
                ]),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: 'Thanks for visiting. ',
                style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),
                children: [
                  TextSpan(
                      text: 'Hear from you soon.',
                      style:
                          GoogleFonts.raleway(fontSize: 20, color: Colors.grey))
                ]),
          ),
        ],
      ),
    );
  }
}
