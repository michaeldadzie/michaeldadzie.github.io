import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';

class ProjectUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.white,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          RichText(
            text: TextSpan(
                text: 'UI Clones, \n',
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'I clone mobile UI designs using flutter',
                    style: GoogleFonts.raleway(fontSize: 15, color: Colors.red),
                  )
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              autoPlayAnimationDuration: 2.seconds,
              pauseAutoPlayOnTouch: 5.seconds,
              items: [
                UIClones(
                  link: 'assets/meal.png',
                ),
                UIClones(
                  link: 'assets/notes.png',
                ),
                UIClones(
                  link: 'assets/cat.png',
                ),
                UIClones(
                  link: 'assets/fav.png',
                ),
                UIClones(
                  link: 'assets/mb.png',
                ),
              ],
              height: 1000,
              viewportFraction: context.isMobile ? 1 : 0.3,
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 900 : 800),
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
        width: 1242,
        height: 2688,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(link),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
