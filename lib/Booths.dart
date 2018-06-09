import 'package:flutter/material.dart';

class Booths extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
    Column buttonsForBooths(String label1) {{
      Color color = Theme.of(context).primaryColor;

      return new Column(
        children: [
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                padding: const EdgeInsets.symmetric(vertical: 100.0),
                color: Colors.red,
                child: new Text(
                  label1,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
              )          ),
        ],
      );
    }
    }

    Widget boothsBoxes = new Expanded(
        child: new Container(
          child: new Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buttonsForBooths("Science Exhibtion"),
              buttonsForBooths("ASTI"),
            ],
          ),
        )
    );
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget boothsTop = new Expanded(
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new SecondScreen()),
                      );
                    },
                    padding: const EdgeInsets.symmetric(vertical: 100.0),

                    color: Colors.blue,
                    child: new Text(
                      "Science Exhibition",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                  )
              ),
          ),
          new Expanded(
            child: new Container(
                margin: EdgeInsets.all(10.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new SecondScreen()),
                    );
                  },
                  padding: const EdgeInsets.symmetric(vertical: 100.0),
                  color: Colors.red,
                  child: new Text(
                    "ASTI",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900],
                    ),
                  ),
                )
            ),


          ),
        ],
      ),

    );
    Widget boothsBot = new Expanded(
      child: new Container(
        child: new Row(

          children: <Widget>[
            new Expanded(
                child: new Container(
                    margin: EdgeInsets.all(10.0),
                    child: new RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => new SecondScreen()),
                        );
                      },
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      color: Colors.yellow,
                      child: new Text(
                        "CYIC",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[900],
                        ),
                      ),
                    )
                ),
            ),
            new Expanded(
                child: new Container(
                    margin: EdgeInsets.all(10.0),
                    child: new RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => new SecondScreen()),
                        );
                      },
                      color: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      child: new Text(
                        "Humanitarian",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      ),
                    )
                ),
            ),
          ],
        ),


      ),
    );
    return new MaterialApp(
      title: 'FLUTETETER Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('BOOTHS'),
          centerTitle: true,

        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //boothsBoxes,
            boothsTop,
            boothsBot,
            //buttonSection,
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Booths"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('WORK IN PROGRESS'),
        ),
      ),
    );
  }

}