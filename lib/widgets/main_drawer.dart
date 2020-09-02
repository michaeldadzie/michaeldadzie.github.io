import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.red,
      ),
      title: (Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.black),
      )),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/md_red.png'),
                    radius: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Michael Dadzie',
                    style: GoogleFonts.raleway(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, 0.4),
                  child: Text(
                    'Flutter Developer',
                    style:
                        GoogleFonts.raleway(fontSize: 15, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Send me an Email', Icons.email, _createEmail),
          Divider(
            color: Colors.red,
            thickness: 1,
          ),
          SizedBox(height: 10),
          ListTile(
            title: (Text(
              'Twitter',
              style: GoogleFonts.raleway(fontSize: 20, color: Colors.black),
            )),
            trailing: Icon(
              AntDesign.twitter,
              color: Colors.black,
            ),
            onTap: () => html.window
                .open('https://twitter.com/michaeldadzie_', 'michaeldadzie'),
          ),
          ListTile(
            title: (Text(
              'Github',
              style: GoogleFonts.raleway(fontSize: 20, color: Colors.black),
            )),
            trailing: Icon(
              AntDesign.github,
              color: Colors.black,
            ),
            onTap: () => html.window
                .open('https://github.com/michaeldadzie', 'michaeldadzie'),
          ),
          ListTile(
            title: (Text(
              'Instagram',
              style: GoogleFonts.raleway(fontSize: 20, color: Colors.black),
            )),
            trailing: Icon(
              AntDesign.instagram,
              color: Colors.black,
            ),
            onTap: () => html.window
                .open('https://instagram.com/afrobeezyy', 'michaeldadzie'),
          ),
          ListTile(
            title: (Text(
              'LinkedIn',
              style: GoogleFonts.raleway(fontSize: 20, color: Colors.black),
            )),
            trailing: Icon(
              AntDesign.linkedin_square,
              color: Colors.black,
            ),
            onTap: () => html.window.open(
                'https://www.linkedin.com/in/michael-dadzie-9b466b181/',
                'michaeldadzie'),
          ),
        ],
      ),
    );
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
