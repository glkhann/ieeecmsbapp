import 'package:flutter/material.dart';
import 'package:ieee_sate/Home.dart';
import 'package:ieee_sate/Sponsors.dart';
import 'package:ieee_sate/Booths.dart';
import 'package:ieee_sate/Schedule.dart';
import 'package:ieee_sate/Vote.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'THE MAIN PAGE (Start)',
      home: new MyHomePage(title: 'The Starting screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int index = 2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Offstage(
            offstage: index != 0,
            child: new TickerMode(
              enabled: index == 0,
              child: new MaterialApp(home: new Booths()),
            ),
          ),
          new Offstage(
            offstage: index != 1,
            child: new TickerMode(
              enabled: index == 1,
              child: new MaterialApp(home: new Schedule()),
            ),
          ),
          new Offstage(
            offstage: index != 2,
            child: new TickerMode(
              enabled: index == 2,
              child: new MaterialApp(home: new Home()),
            ),
          ),
          new Offstage(
            offstage: index != 3,
            child: new TickerMode(
              enabled: index == 3,
              child: new MaterialApp(home: new Vote()),
            ),
          ),
          new Offstage(
            offstage: index != 4,
            child: new TickerMode(
              enabled: index == 4,
              child: new MaterialApp(home: new Sponsors()),
            ),
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue[600],
        currentIndex: index,
        onTap: (int index) { setState((){ this.index = index; }); },
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: const Icon(Icons.info_outline),
            title: new Text('Booths'),
          ),
          new BottomNavigationBarItem(
            icon: const Icon(Icons.access_time),
            title: new Text('Schedule'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.event_available),
            title: new Text("Voting"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.stars),
            title: new Text("Sponsors"),
          ),

        ],
      ),
    );
  }
}



