import 'package:flutter/material.dart';
import 'package:michaeldadzie/profile/profile_projects.dart';
import 'package:michaeldadzie/utils/config.dart';
import 'package:michaeldadzie/widgets/navbar/navbar.dart';
import 'package:michaeldadzie/widgets/responsive_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget get menuButton {
    final color = Theme.of(context).hintColor;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 3, width: 24, color: color),
          SizedBox(height: 7),
          Container(height: 3, width: 12, color: color),
        ],
      ),
    );
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title: Center(
              child: NavHeader(),
            ),
            leading: ResponsiveWidget.isSmallScreen(context)
                ? IconButton(
                    hoverColor: Theme.of(context).primaryColor,
                    splashColor: Theme.of(context).primaryColor,
                    highlightColor: Theme.of(context).primaryColor,
                    onPressed: () => scaffoldKey.currentState.openDrawer(),
                    icon: menuButton,
                  )
                : null,
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
            iconTheme: new IconThemeData(color: Theme.of(context).hintColor),
          ),
          drawer: ResponsiveWidget.isSmallScreen(context) ? Drawer() : null,
          body: SingleChildScrollView(
            child: AnimatedPadding(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.all(20),
              child: ResponsiveWidget(
                largeScreen: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Projects(),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: ResponsiveWidget.isSmallScreen(context)
              ? FloatingActionButton(
                  backgroundColor: Theme.of(context).hintColor,
                  child: Icon(
                    Icons.brightness_4,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    currentTheme.switchTheme();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                )
              : null),
    );
  }
}
