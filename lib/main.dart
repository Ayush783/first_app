import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            bottomNavigationBar: Bar(),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(""),
                                  Text(
                                    "Good morning,",
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 40,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xfffdffc0)),
                                    child: Text(
                                      "Jack",
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 40,
                                        color: Colors.blue[900],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Acont(),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Your Plan",
                                  style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 30,
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "for today",
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 30,
                                    color: Colors.blue[900],
                                  ),
                                ),
                                Text(
                                  "\n1 of 4 completed",
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            ),
                            CircularPercentIndicator(
                              radius: 110,
                              percent: 0.25,
                              progressColor: const Color(0xffabffcc),
                              animation: true,
                              animationDuration: 100,
                              center: Text(
                                "25%",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Today's activities",
                              style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 16,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(95, 0, 0, 0),
                            ),
                            Container(
                              height: 17,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100]),
                              child: Center(
                                child: Text(
                                  ". Tracker",
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: const Color(0xffabffcc),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        ),
                        Acont2(),
                      ],
                    ),
                  ],
                ),
                Text("hi"),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 60, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Tips & Strategies",
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Motivation",
                              style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(120, 0, 0, 0),
                            ),
                            RaisedButton(
                              color: Colors.transparent,
                              textColor: Color(0xffff774e),
                              elevation: 30,
                              onPressed: () {}, //_launchURL,
                              child: Text(
                                "Watch All",
                                style: TextStyle(
                                    fontFamily: 'Arial', fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://pragatiresorts.com/wp-content/uploads/2018/10/Nature-walk-1.jpg'),
                                    fit: BoxFit.fill),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 150, 0, 0),
                                  child: Text(
                                    "When you\nWake up",
                                    style: TextStyle(
                                      color: Color(0xfffdfff9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            ),
                            Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://pragatiresorts.com/wp-content/uploads/2018/11/nature-walk-4.jpg'),
                                    fit: BoxFit.fill),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 150, 0, 0),
                                  child: Text(
                                    "Say thanks",
                                    style: TextStyle(
                                      color: Color(0xfffdfff9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            ),
                            Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://pragatiresorts.com/wp-content/uploads/2018/11/nature-walk-11.jpg'),
                                    fit: BoxFit.fill),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 150, 0, 0),
                                  child: Text(
                                    "Eat good",
                                    style: TextStyle(
                                      color: Color(0xfffdfff9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            ),
                            Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'http://pragatiresorts.com/wp-content/uploads/2018/11/nature-walk-6.jpg'),
                                    fit: BoxFit.fill),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 150, 0, 0),
                                  child: Text(
                                    "Play games",
                                    style: TextStyle(
                                      color: Color(0xfffdfff9),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                      Text("Support",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue[900],
                              backgroundColor: Color(0xfff9ffe0))),
                      RaisedButton(
                        onPressed: () {},
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.grey[300],
                        child: Container(
                          color: Colors.transparent,
                          height: 60,
                          width: 270,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                MaterialCommunityIcons.apple,
                                color: Colors.green[300],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              ),
                              Text(
                                "Diet",
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 15,
                                  color: Colors.blue[900],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(175, 0, 0, 0),
                              ),
                              Icon(
                                MaterialCommunityIcons.arrow_right,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                      RaisedButton(
                        onPressed: (){},//_launchURL(),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.grey[300],
                        child: Container(
                          color: Colors.transparent,
                          height: 60,
                          width: 270,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                MaterialCommunityIcons.dumbbell,
                                color: Colors.green[300],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              ),
                              Text(
                                "Excercises",
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 15,
                                  color: Colors.blue[900],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(126, 0, 0, 0),
                              ),
                              Icon(
                                MaterialCommunityIcons.arrow_right,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text("go"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Acont extends StatefulWidget {
  @override
  _AcontState createState() => _AcontState();
}

class _AcontState extends State<Acont> {
  double _height = 155;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(30);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: _height,
      width: 300,
      decoration: BoxDecoration(
          color: const Color(0xffff774e), borderRadius: _borderRadius),
      duration: Duration(seconds: 5),
      curve: Curves.easeIn,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(""),
              Row(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'images/trophy2.png',
                      color: Colors.white,
                      height: 15,
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xffff8f6e),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Text(
                    "   Great\n   Progress",
                    style: TextStyle(
                        fontFamily: 'Arial',
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "It looks like you are on",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "track. Please continue to",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "follow your daily plan",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: const Color(0xfffeffe5),
                borderRadius: BorderRadius.circular(50)),
            margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Center(
              child: Text(
                "Ok",
                style: TextStyle(
                    fontFamily: 'Arial',
                    color: const Color(0xffff774e),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: <Widget>[
        Tab(
          child: Row(
            children: <Widget>[
              Icon(
                MaterialCommunityIcons.flag,
                color: Colors.blue[900],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              Text(
                "Your\nPlan",
                style: TextStyle(
                    fontFamily: 'Arial', color: Colors.blue[900], fontSize: 10),
              )
            ],
          ),
        ),
        Tab(
            icon: Icon(
          MaterialCommunityIcons.heart_pulse,
          color: Colors.blue[900],
        )),
        Tab(
          child: Row(
            children: <Widget>[
              Icon(
                MaterialCommunityIcons.lightbulb_on_outline,
                color: Colors.blue[900],
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              ),
              Text(
                "Tips &\nStrategies",
                style: TextStyle(
                    fontFamily: 'Arial', color: Colors.blue[900], fontSize: 7),
              )
            ],
          ),
        ),
        Tab(
            icon: Icon(
          MaterialCommunityIcons.account_outline,
          color: Colors.blue[900],
        )),
      ],
    );
  }
}

class Acont2 extends StatefulWidget {
  @override
  _Acont2State createState() => _Acont2State();
}

class _Acont2State extends State<Acont2> {
  Color _color = Colors.blue[900];
  String _text = "Wake Up";
  String _text2 = "Done";

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _color,
      ),
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
          ),
          Icon(
            MaterialCommunityIcons.dots_horizontal,
            size: 40,
            color: Colors.white70,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
          ),
          Text(
            _text,
            style: TextStyle(
                fontFamily: 'Arial', color: Colors.white70, fontSize: 15),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.transparent,
            child: RaisedButton(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white70,
              textColor: Colors.blue[900],
              onPressed: () {
                setState(() {
                  _color = Color(0xffff774e);
                  _text = "Go for a Jog";
                  _text2 = "To Do";
                });
              },
              child: Center(
                child: Text(
                  _text2,
                  style: TextStyle(
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// _launchURL() async {
//   const url = 'https://www.healthline.com/health/fitness-exercises/10-best-exercises-everyday';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
