import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'PORTFOLIO',
            style: TextStyle(
                color: Color.fromRGBO(85, 85, 85, 1.0), fontSize: 25.0),
          ),
          new SizedBox(height: 10.0,),
          const Text(
              'See my works below.'),
          new Stepper(
            steps: [
              _currentActivity(),
              _digiryteProfile(),
              _rbtProfile(),
              _rbtInternProfile(),
              _aaumProfile(),
            ],
            controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                Container(),
          ),
        ],
      ),
    );
  }

  Step _currentActivity() {
    return Step(
      isActive: true,
      title: Text('May\'2019 to current'),
      subtitle: Text('Mobile Application Developer'),
      content: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  'FreeLancer, Currently open to co-operation on new and existing projects.'),
            ],
          )),
    );
  }

  Step _digiryteProfile() {
    return Step(
      title: Text('Aug\'2017 to May\'2019'),
      subtitle: Text('Mobile Application Developer @ Digiryte pvt ltd'),
      content: Container(width: double.infinity, child: Text('FreeLancer.')),
    );
  }

  Step _rbtProfile() {
    return Step(
      title: Text('Jun\'2016 to Jul\'2017'),
      subtitle: Text('Mobile Application Developer @ RedBlackTree pvt ltd'),
      content: Container(width: double.infinity, child: Text('FreeLancer.')),
    );
  }

  Step _rbtInternProfile() {
    return Step(
      title: Text('Dec\'2015 to May\'2016'),
      subtitle: Text('Software Engineer @ RedBlackTree pvt ltd'),
      content: Container(width: double.infinity, child: Text('FreeLancer.')),
    );
  }

  Step _aaumProfile() {
    return Step(
      title: Text('Jul\'2014 to Nov\'2015'),
      subtitle: Text('Internship @ Aaum Research and Analytics'),
      content: Container(width: double.infinity, child: Text('FreeLancer.')),
    );
  }
}
