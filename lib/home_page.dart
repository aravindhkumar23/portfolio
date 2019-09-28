import 'package:flutter/material.dart';
import 'package:portfolio/contact_me.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/utils.dart';

import 'menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 0;

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
              isMobile(context: context)
                  ? new Container()
                  : new Expanded(flex: 1, child: _renderMenuContent()),
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
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  Widget _renderView() {
    switch (activeTab) {
      case 1:
        return Portfolio();
      case 2:
        return ContactMe();
      case 3:
        return Skills();
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
            'Experienced Mobile Engineer and Team Lead with a demonstrated history of working with Startups. Skilled in iOS Mobile Application Development and Flutter, React Native (Cross-Platform Mobile App) with great expertise in Agile and Product development methodologies. Strong engineering professional with a M.Sc. in Computer Science from College of Engineering, Guindy (one of the most prestigious educational institutes in India).',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
