import 'dart:math';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<Color> colorlists = [
    Colors.red,
    Colors.teal,
    Colors.yellow,
    Colors.grey,
    Colors.orange,
    Colors.purple,
  ];
  Random random = Random();
  Color getrandoomcolor() {
    return colorlists[random.nextInt(colorlists.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                autherRow(),
                SizedBox(height: 16,),
                newsitemrow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }
}

Widget autherRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bt.jpg'),
              ),
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.only(right: 16),
          ),
          Column(
            children: <Widget>[
              Text(
                'michle Adwan',
                style: TextStyle(color: Colors.red),
              ),
              Row(
                children: <Widget>[
                  Text('Michle Adawn'),
                  Row(
                    children: <Widget>[
                      Text(
                        '15 min',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('life style', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      IconButton(
        icon: Icon(Icons.bookmark_border),
        onPressed: () {},
        color: Colors.grey,
      ),
    ],
  );
}

Widget newsitemrow() {
  return Row(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bt.jpg'), fit: BoxFit.cover)),
        width: 124,
        height: 124,
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 8),
          child: Column(
            children: <Widget>[
              Text(
                'Tech Tent: old phones and safe social ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'we also talk about the future of work as the robot advance and we ask whether aretro phone ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  height: 1.25,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
