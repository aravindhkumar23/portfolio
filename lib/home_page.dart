import 'package:flutter/material.dart';
import 'package:portfolio/contact_me.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/utils.dart';

import 'menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: _renderMenuContent(),
      ),
      appBar: customAppBar(context: context),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://jtom.me/images/home-bg3.7a2a1df8.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Row(
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: isMobile(context: context)
                    ? new Container()
                    : _renderMenuContent(),
              ),
              new Expanded(
                flex: 4,
                child: _renderView(),
              ),
            ],
          )),
    );
  }

  void _updateActiveTab({int activeTabIndex}) {
    setState(() {
      activeTab = activeTabIndex;
    });
  }

  Widget _renderView() {
    switch (activeTab) {
      case 1:
        return Portfolio();
      case 2:
        return ContactMe();
      case 3:
        return HomePageContent();
      default:
        return new HomePageContent();
    }
  }

  Widget _renderMenuContent() {
    return Menu(
      activeTab: activeTab,
      onTabChange: (int activeTab) =>
          _updateActiveTab(activeTabIndex: activeTab),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Hi, I\'m Aravindh,',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          new Text(
            'a freelance mobile app developer',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          new Text(
            'specialized in front-end and back-end web development',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
