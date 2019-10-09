import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils.dart';

class Menu extends StatelessWidget {
  final int activeTab;
  final Function onTabChange;

  const Menu({Key key, this.activeTab, this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.0),
      child: new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: getAppColor(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new InkWell(
                  onTap: () => onTabChange(0),
                  child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    backgroundImage: new AssetImage('assets/dp.jpg'),
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Text(
                  'Aravindh Kumar L'.toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                new SizedBox(
                  height: 5.0,
                ),
                new Text(
                  'Mobile Application Developer'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                new Expanded(
                    child: new ListView(
                  children: <Widget>[
                    new SizedBox(
                      height: 20.0,
                    ),
                    new ListTile(
                      title: new Text(
                        'PORTFOLIO',
                        style: _optionsTextStyle(isActive: activeTab == 1),
                      ),
                      onTap: () {
                        onTabChange(1);
                      },
                      trailing: activeTab == 1
                          ? new Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          : null,
                    ),
                    new ListTile(
                      title: new Text(
                        'Skills & project highlights'.toUpperCase(),
                        style: _optionsTextStyle(isActive: activeTab == 3),
                      ),
                      onTap: () {
                        onTabChange(3);
                      },
                      trailing: activeTab == 3
                          ? new Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          : null,
                    ),
                    new ListTile(
                      onTap: openCV,
                      title: new Text(
                        'MY CV',
                        style: _optionsTextStyle(isActive: activeTab == 4),
                      ),
                    ),
                    new ListTile(
                      title: new Text(
                        'CONTACT ME',
                        style: _optionsTextStyle(isActive: activeTab == 2),
                      ),
                      onTap: () {
                        onTabChange(2);
                      },
                      trailing: activeTab == 2
                          ? new Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          : null,
                    ),
                    new ListTile(
                      title: new Text(
                        'Get in touch',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    new Row(
                      children: <Widget>[
                        new IconButton(
                            icon: Icon(
                              Icons.mail_outline,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                        new IconButton(
                            icon: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                            onPressed: openFb),
                        new IconButton(
                            icon: Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                            ),
                            onPressed: openLinkedIn),
                        new IconButton(
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ),
                            onPressed: openGit)
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _optionsTextStyle({bool isActive}) {
    return new TextStyle(
      color: Colors.white.withOpacity(isActive ? 1.0 : 0.7),
      fontSize: isActive ? 14 : 12.0,
    );
  }
}
