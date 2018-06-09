import 'package:flutter/material.dart';
import 'package:image_carousel/image_carousel.dart';
class Sponsors extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget gold = new Expanded(
        flex: 2,
        child: new Card(
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new ImageCarousel(
                    <ImageProvider>[
                      new NetworkImage('https://pbs.twimg.com/profile_images/2489809682/8cwlmuivpk7pa24gyd5b_400x400.gif'),
                      new NetworkImage('http://www.eftf-ifcs2017.org/wp-content/uploads/2017/05/ieee_wie_purple.jpg'),
                      new NetworkImage('http://www.younginnovators.my/clients/Young_Innovators_Challenge_2017_BF8B848D-2001-42D6-A181-D8EFA2F2E6E7/contentms/img/img_chumbaka_logo.jpg'),
                    ],

                    interval: new Duration(seconds: 4),
                    fit: BoxFit.contain,

                  )
              )
            ],
          ),
        ),
    );
    Widget silver1 = new Expanded(
        flex: 1,
        child: new ImageCarousel(
          <ImageProvider>[
            new NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/e/e8/Shell_logo.svg/1200px-Shell_logo.svg.png'),
            new NetworkImage('http://www.thesundaily.my/sites/default/files/thesun/Catalogue/a5_007.jpg'),
            new NetworkImage('https://www.edukate.com.my/EdukatePortal/CL4/images/partners_logo1.png'),
            new NetworkImage('http://www.younginnovators.my/clients/Young_Innovators_Challenge_2017_BF8B848D-2001-42D6-A181-D8EFA2F2E6E7/contentms/img/yic_logo.png'),
          ],

          interval: new Duration(seconds: 2),
          fit: BoxFit.contain,

        )
    );
    Widget silver2 = new Expanded(
        flex: 1,
        child: new ImageCarousel(
          <ImageProvider>[
            new NetworkImage('http://www.thesundaily.my/sites/default/files/thesun/Catalogue/a5_007.jpg'),
            new NetworkImage('https://www.edukate.com.my/EdukatePortal/CL4/images/partners_logo1.png'),
            new NetworkImage('http://www.younginnovators.my/clients/Young_Innovators_Challenge_2017_BF8B848D-2001-42D6-A181-D8EFA2F2E6E7/contentms/img/yic_logo.png'),
            new NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/e/e8/Shell_logo.svg/1200px-Shell_logo.svg.png'),
          ],

          interval: new Duration(seconds: 2),
          fit: BoxFit.contain,

        )
    );
    Widget plat = new Expanded(
        flex: 3,
        child: new Card(

          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new ImageCarousel(
                    <ImageProvider>[
                      new NetworkImage('http://more.im4u.my/wp-content/uploads/2015/09/VM_FinalLogoEng_VM_Logo-english-960x675.jpeg'),
                      new NetworkImage('https://www.edukate.com.my/EdukatePortal/CL4/images/partners_logo2.png'),
                      new NetworkImage('https://www.intel.com/etc/designs/intel/us/en/images/printlogo.png'),
                    ],
                    interval: new Duration(seconds: 3),
                    fit: BoxFit.contain,

                  )
              )
            ],
          ),
        )
    );
    Widget thanks = new Container(
        padding: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
          color: Colors.blue[400],

        ),
        child: new Text("Supported by",
          textScaleFactor: 1.2,

          style: new TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),
        )
    );


    return new MaterialApp(
      title: 'sponsorpage',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SPONSORS'),
          centerTitle: true,
        ),
        body: new Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[

                thanks,
                gold,
                plat,
                new Expanded(
                  flex: 1,
                    child: new Card(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          silver1,
                          silver2,
                        ],
                      ),
                    )
                )


              ],
            )
        )
      ),
    );
  }
}