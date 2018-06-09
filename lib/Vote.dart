import 'package:flutter/material.dart';

class Vote extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
    );
    return new MaterialApp(
      title: 'FLUTETETER Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('VOTING'),
          centerTitle: true,
        ),
        body: new ListView(
          children: [

            titleSection,
          ],
        ),
      ),
    );
  }
}