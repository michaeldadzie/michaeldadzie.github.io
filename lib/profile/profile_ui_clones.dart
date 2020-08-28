import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';

class ProjectUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.black,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          RichText(
            text: TextSpan(
                text: 'UI Clones, \n',
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: 'I clone mobile UI designs using flutter',
                      style:
                          GoogleFonts.raleway(fontSize: 15, color: Colors.grey))
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              items: [
                UIClones(
                  link: 'https://i.ibb.co/qny3Msj/IMG-4355.png',
                ),
                UIClones(
                  link: 'https://i.ibb.co/w6Q36Sd/IMG-4356.png',
                ),
                UIClones(
                  link: 'https://i.ibb.co/VDhKJVg/IMG-4357.png',
                )
              ],
              height: 600,
              viewportFraction: context.isMobile ? 0.6 : 0.3,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 500),
    );
  }
}

class UIClones extends StatelessWidget {
  final String link;
  UIClones({this.link});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(link),
          fit: BoxFit.fitHeight,
        )),
      ),
    );
  }
}
