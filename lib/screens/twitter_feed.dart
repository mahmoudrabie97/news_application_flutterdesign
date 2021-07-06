import 'package:flutter/material.dart';
import 'package:news_application/shared_ui/navigator_drawer.dart';

class Twitterfeed extends StatefulWidget {
  @override
  _TwitterfeedState createState() => _TwitterfeedState();
}

class _TwitterfeedState extends State<Twitterfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('twitter feed'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      drawer: Navigatordrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, position) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8),
                      child: Card(
              child: Column(
                children: <Widget>[
                  cardheader(),
                  cardbody(),
                  drawline(),
                  cardfooter(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}

Widget cardheader() {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(16),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bt.jpg'),
          radius: 24,
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'chiristina meyers',
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '@ch_meyers',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text('Fri,2 may 2017. 4.30')
        ],
      ),
    ],
  );
}

Widget cardbody() {
  return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
        'We also talk about the future of work as the robots advance and we ask whether aretro phone',
        style: TextStyle(
          fontSize: 16,
          height: 1.2,
          color: Colors.grey.shade900,
        ),
      ));
}

Widget cardfooter() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.repeat,
              ),
              color: Colors.orange,
              onPressed: () {},
            ),
            Text(
              '25',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  'Share',
                  style: TextStyle(color: Colors.orange),
                )),
            FlatButton(
                onPressed: () {},
                child: Text(' Open ', style: TextStyle(color: Colors.orange)))
          ],
        ),
      ],
    ),
  );
}
Widget drawline()
{
return Container
(
height: 1,
color: Colors.grey.shade200,
margin: EdgeInsets.only(top: 16),


);

}
