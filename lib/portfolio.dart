import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

class Portfolio extends StatelessWidget {
  final List<dynamic> experience = [
    {
      'year': 'May\'19 to current',
      'jobTitle': 'Engineering Lead',
      'companyName':
          'Rootquotient Technologies Pvt Ltd',
      'content': [
        'Technical Leadership: Led a team of mobile developers in the successful delivery of multiple mobile applications for iOS and Android platforms, ensuring adherence to coding standards, performance optimization, and timely delivery of projects.',
        'Architecture Design: Designed and implemented scalable and maintainable architectures for mobile applications, optimizing performance, and enhancing user experience.',
        'Team Collaboration: Collaborated closely with product management, design, and QA teams to define project requirements, prioritize tasks, and ensure alignment on project goals and timelines.',
        'Mentorship and Coaching: Provided mentorship and coaching to team members, fostering their professional growth and development through knowledge sharing, code reviews, and technical guidance.',
        'Innovation and Continuous Improvement: Stayed abreast of emerging technologies and industry trends in mobile development, driving innovation initiatives within the team and exploring new tools and frameworks to improve development efficiency and product quality.'
      ],
    },
    {
      'year': 'Aug\'17 to May\'19',
      'jobTitle': 'Mobile Application Developer',
      'companyName': 'Digiryte Pvt Ltd',
      'content': [
        'Helping UK based startups to build Innovative Mobile Apps',
        'Created mobile applications in a test-driven development (TDD) environment',
        'Well-versed in technologies like Flutter and React-Native to develop cross platform applications',
        'Provided continued maintenance for bug fixes and feature enhancements & development for existing mobile applications',
        'Developed work-flow charts and diagrams to ensure production team compliance with client deadlines',
        'API Integration, data retrieval and manipulation for the mobile front end with backend APIs (RoR, PHP etc.,) and Firebase'
      ]
    },
    {
      'year': 'Jun\'16 to Jul\'17',
      'jobTitle': 'Mobile Application Developer',
      'companyName': 'RedBlackTree Pvt Ltd',
      'content': [
        'Wrote highly maintainable, solid code in swift for ID system has won consistent praise from subsequent developers since initial version'
            'Modified existing Interactive Directory mobile app to correct coding errors, upgrade interfaces and improve overall performance',
        'Stored, retrieved and manipulated data for offline mobile application support using couchbase-lite database',
      ]
    },
    {
      'year': 'Dec\'15 to May\'16',
      'jobTitle': 'Software Engineer',
      'companyName': 'RedBlackTree Pvt Ltd',
      'content': [
        'Worked closely with software development and testing team members to design and develop robust solutions to meet client requirements for functionality, scalability and performance'
      ]
    },
    {
      'year': 'Jul\'14 to Nov\'14',
      'jobTitle': 'Internship',
      'companyName': 'Aaum Research and Analytics Pvt Ltd',
      'content': [
        'Development of static and dynamic dashboards that provide business intelligence in the form of KPI at different time ranges. Customer data from the app, in the form of CDR are generally used for this purpose'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      child: new ListView(
        padding: const EdgeInsets.all(15.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'Portfolio'.toUpperCase(),
                  style: TextStyle(
                      color: Color.fromRGBO(85, 85, 85, 1.0), fontSize: 35.0),
                ),
                Text(
                  'Work Experience',
                  style: TextStyle(fontSize: 15.0),
                ),
                new SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          new Column(
            children: <Widget>[
              renderTile(isLeftTile: false, index: 0),
              renderTile(isLeftTile: true, index: 1),
              renderTile(isLeftTile: false, index: 2),
              renderTile(isLeftTile: true, index: 3),
              renderTile(isLeftTile: false, index: 4),
            ],
          ),
        ],
      ),
    );
  }

  Widget renderTile({bool isLeftTile, int index}) {
    return IntrinsicHeight(
      child: new Row(
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: isLeftTile
                ? renderContent(isLeftTile: true, index: index)
                : new Container(),
          ),
          renderVerticalDivider(),
          new Expanded(
            flex: 1,
            child: isLeftTile
                ? new Container()
                : renderContent(isLeftTile: false, index: index),
          ),
        ],
      ),
    );
  }

  Widget renderContent({bool isLeftTile, int index}) {
    return new Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        isLeftTile ? Color(0xFF43cea2) : Color(0xFF185a9d),
        isLeftTile ? Color(0xFF185a9d) : Color(0xFF43cea2),
      ])),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: Text(
                  experience[index]['year'],
                  style: TextStyle(fontSize: 30.0, color: Colors.white,fontStyle: FontStyle.italic),
                ),
              ),
              new SizedBox(
                width: 20.0,
              ),
              new Expanded(
                flex: 2,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      experience[index]['jobTitle'],
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        openCompanyProfile(index: index);
                      },
                      child: Text(
                        '@${experience[index]['companyName']}',
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white.withOpacity(0.7),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          new SizedBox(
            height: 10.0,
          ),
          const Text(
            'Responsibilities Taken',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontStyle: FontStyle.italic),
          ),
          new SizedBox(
            height: 10.0,
          ),
          for (var content in experience[index]['content'])
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    color: Colors.white,
                    width: 5.0,
                    height: 5.0,
                    margin: const EdgeInsets.all(5.0),
                  ),
                  new Expanded(
                      child: new Text(
                    content,
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget renderVerticalDivider() {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          color: Colors.blue,
          width: 3.0,
        ),
        new Container(
          margin: const EdgeInsets.all(2.5),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: getAppColor(),
          ),
        ),
      ],
    );
  }
}
