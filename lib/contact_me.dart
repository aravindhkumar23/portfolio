import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Contact me'.toUpperCase(),
            style: TextStyle(color: Colors.black87, fontSize: 25.0),
          ),
          new SizedBox(
            height: 10.0,
          ),
          new Text(
            'I am available for hire and open to any ideas of cooperation.',
            style: TextStyle(color: Colors.black45, fontSize: 15.0),
          ),
          new SizedBox(
            height: 10.0,
          ),
          new ListTile(
            onTap: () {},
            leading: new Icon(
              Icons.mail_outline,
              color: getAppColor(),
            ),
            title: new Text(
              'aravindhkumar23@gmail.com',
              style: _linkStyle(),
            ),
          ),
          new ListTile(
            onTap: openLinkedIn,
            leading: new Icon(
              FontAwesomeIcons.linkedin,
              color: getAppColor(),
            ),
            title: new Text(
              '/aravindhkumar23',
              style: _linkStyle(),
            ),
          ),
          new ListTile(
            onTap: openFb,
            leading: new Icon(
              FontAwesomeIcons.facebook,
              color: getAppColor(),
            ),
            title: new Text(
              '/aravindh.kumar.568',
              style: _linkStyle(),
            ),
          ),
          new ListTile(
            onTap: openGit,
            leading: new Icon(
              FontAwesomeIcons.github,
              color: getAppColor(),
            ),
            title: new Text(
              '/aravindhkumar23',
              style: _linkStyle(),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _linkStyle() {
    return new TextStyle(
        color: getAppColor(), decoration: TextDecoration.underline);
  }
}
