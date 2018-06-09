import 'package:flutter/material.dart';
import './Schedules/Saturday.dart' as saturday;
import './Schedules/Sunday.dart' as sunday;

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(text: 'SATURDAY'),
                new Tab(text: 'SUNDAY'),
              ],
            ),
            elevation: 0.0,
            centerTitle: true,
            title: new Text('SCHEDULE'),
          ),
          body: new TabBarView(
            children: [
              new saturday.Saturday(),
              new sunday.Sunday(),
            ],
          ),
        ),
      ),
    );
  }
}