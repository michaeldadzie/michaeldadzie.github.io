import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.red700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          RichText(
            text: TextSpan(
                text: 'All Creative works, \n',
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: 'Open Source Projects',
                      style: GoogleFonts.raleway(
                          fontSize: 20, color: Colors.black))
                ]),
          ),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(
                    title: 'Soulll Expense',
                    link: 'https://github.com/michaeldadzie/Expense-App'),
                ProjectWidget(
                  title: 'Meal Bible',
                  link: 'https://github.com/michaeldadzie/Meals-App',
                ),
                ProjectWidget(
                    title: 'Notes App UI',
                    link: 'https://github.com/michaeldadzie/Notes-App-UI'),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;
  final String link;
  const ProjectWidget({Key key, @required this.title, this.link})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => html.window.open(link, title),
      child: title.text.bold.white.xl.center
          .make()
          .box
          .p8
          .roundedLg
          .neumorphic(color: Vx.red700, elevation: 5, curve: VxCurve.flat)
          .alignCenter
          .square(200)
          .make()
          .p16(),
    );
  }
}
