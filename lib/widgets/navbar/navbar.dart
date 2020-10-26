import 'package:flutter/material.dart';
import '../responsive_widget.dart';
import 'navbuttons.dart';
import 'package:michaeldadzie/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mdDot.dart';

class NavHeader extends StatefulWidget {
  @override
  _NavHeaderState createState() => _NavHeaderState();
}

class _NavHeaderState extends State<NavHeader> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        width: 5000,
        child: Row(
          mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MDDot(),
            if (!ResponsiveWidget.isSmallScreen(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(width: 190),
                  NavButtons(
                    text: 'Projects',
                    onPressed: () {},
                  ),
                  SizedBox(width: 2),
                  NavButtons(
                    text: 'Services',
                    onPressed: () {},
                  ),
                  SizedBox(width: 2),
                  NavButtons(
                    text: 'About',
                    onPressed: () {},
                  ),
                  SizedBox(width: 2),
                  NavButton(
                    text: 'Get in touch',
                    onPressed: _createEmail,
                  ),
                  IconButton(
                    onPressed: () {
                      currentTheme.switchTheme();
                    },
                    hoverColor: Theme.of(context).primaryColor,
                    icon: Icon(
                      Icons.brightness_4,
                      color: Theme.of(context).hintColor,
                    ),
                    color: Theme.of(context).hintColor,
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
