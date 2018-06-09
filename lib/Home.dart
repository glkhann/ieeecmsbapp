import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Expanded(
        flex: 1,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new  Image.asset('assets/clublogo.png',
              fit: BoxFit.cover,
              height: 426.0/8,
            ),
            new  Image.asset('assets/Curtin.png',
              fit: BoxFit.cover,
              height: 200.0/1.5,
            ),
          ],
        )
    );
    Widget poster = new Expanded(
      flex: 3,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new  Image.asset('assets/poster.png',
              fit: BoxFit.cover,
              height: 240.0,),

          ],
        )
    );
    Widget feed = new Expanded(
      flex:4,
      child: new FutureBuilder(


      future: DefaultAssetBundle
              .of(context)
              .loadString("https://jsonplaceholder.typicode.com/photos"),
          builder: (context, snapshot) {
            // Decode the JSON
            var fbfeed = JSON.decode(snapshot.data.toString());

            return new ListView.builder(
              // Build the ListView

              padding: new EdgeInsets.symmetric(vertical: 8.0),
              itemBuilder: (BuildContext context, int index) {
                return new Row(

                  children: [

                    new Expanded(child:

                    new Column(

                      children: <Widget>[
                        new Text(fbfeed[index]['title'],
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

                          new Text(fbfeed[index]['url'],
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

              },
              itemCount: fbfeed == null ? 0 : fbfeed.length,
            );
          }),
    );

    Widget social = new Expanded(
      flex:2,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(Icons.tag_faces),
            new Icon(Icons.web),
            new Icon(Icons.gps_fixed),
            new Icon(Icons.mail_outline),

          ],
        )
    );


    return new MaterialApp(
      title: 'Home Section',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Science & Technology Exhibition'),
          centerTitle: true,
        ),
        body: new Column(
          children: [
            //titleSection,
            //poster,
            feed,
            //social,
          ],
        ),
      ),
    );
  }


}