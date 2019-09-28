import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final List<String> skills = [
    'Flutter',
    'React Native',
    'iOS[Swift]',
    'FCM',
    'Firestore',
    'Couchbase Lite',
  ];

  final TextStyle projectStyle = TextStyle(fontSize: 19.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      padding:const EdgeInsets.symmetric(vertical: 10.0),
                      child: new Text(
                        'Project Highlights',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            '•',
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Expanded(
                            child: new Text(
                              'Internal communication platform, directory and health & wellbeing of employees (Native iOS using Swift, Couchbase Lite for Offline storage- 4 months)',
                              style: projectStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            '•',
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Expanded(
                            child: new Text(
                              'Dispute resolution of students within education institution (React Native- 5 months) ',
                              style: projectStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            '•',
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Expanded(
                            child: new Text(
                              'Custom made CMS for providing awareness in good oral health and dental problems (React native- 6 months) ',
                              style: projectStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            '•',
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Expanded(
                            child: new Text(
                              'Inspection and inventory management using offline & online sync as a property management solutions ( Flutter- 8 months)',
                              style: projectStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: new Text(
                        'Skills',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return new Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    '•',
                  ),
                  new SizedBox(
                    width: 10.0,
                  ),
                  new Expanded(
                    child: new Text(
                      skills[index],
                      style: projectStyle,
                    ),
                  ),
                ],
              ),
            );
          }, childCount: skills.length),
        )
      ]),
    );
  }
}
