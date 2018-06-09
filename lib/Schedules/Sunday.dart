import 'package:flutter/material.dart';
import 'dart:convert';

class Sunday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("5th August 2018"),
          elevation: 0.0,

        ),
        body: new Container(
          color: Colors.black87,

          child: new Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: new FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('json_d/sundayschedule.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = JSON.decode(snapshot.data.toString());

                  return new ListView.builder(
                    // Build the ListView
                    padding: new EdgeInsets.symmetric(vertical: 8.0),
                    itemBuilder: (BuildContext context, int index) {

                      if(new_data[index]['BoN']=="bold"&&new_data[index]['time']!=""){
                        return new Row(
                          children: [
                            new Expanded(child:

                            new Column(

                              children: <Widget>[
                                new Text(new_data[index]['time'],
                                  textScaleFactor: 1.2,

                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[300],

                                  ),
                                ),
                              ],
                            ),
                            ),
                            new Expanded(
                              flex:2,
                              child: new Column(
                                children: <Widget>[
                                  new Text(new_data[index]['activities'],
                                    textScaleFactor: 1.5,
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[400],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],

                        );
                      }
                      else if(new_data[index]['BoN']=="bold"&&new_data[index]['time']==""){
                        return new Row(

                          children: [
                            new Expanded(
                              flex:4,
                              child: new Column(
                                children: <Widget>[
                                  new Text(new_data[index]['activities'],
                                    textScaleFactor: 1.5,
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[600],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],

                        );
                      }
                      else{
                        return new Padding(
                            padding: new EdgeInsets.all(13.0),
                            child: new Row(
                              children: [
                                new Expanded(child:

                                new Column(

                                  children: <Widget>[
                                    new Text(new_data[index]['time'],
                                      textScaleFactor: 1.2,

                                      style: new TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                new Expanded(
                                  flex:2,
                                  child: new Column(
                                    children: <Widget>[
                                      new Text(new_data[index]['activities'],
                                        textScaleFactor: 1.2,
                                        style: new TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ],

                            )
                        );
                      }
                    },
                    itemCount: new_data == null ? 0 : new_data.length,
                  );
                }),
          ),

        ));
  }
}


