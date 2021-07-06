
import 'package:flutter/material.dart';
import 'package:news_application/shared_ui/navigator_drawer.dart';

class Ingstram extends StatefulWidget {
  @override
  _IngstramState createState() => _IngstramState();
}

class _IngstramState extends State<Ingstram> {
  TextStyle hashtagstyle = TextStyle(color: Colors.orange);
  Widget drawBody() {

    return SizedBox(
    width: double.infinity,
    height: MediaQuery.of(context).size.height*.25,
      child: Image
    (
      image: ExactAssetImage('assets/images/bt.jpg'),
      fit: BoxFit.cover,


    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingstram field '),
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
                  drawHeader(),
                  drawTitle(),
                  drawhashtag(),
                  drawBody(),
                  drawfoter(),
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

Widget drawHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
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
              SizedBox(
                height: 8,
              ),
              Text('Fri,2 may 2017. 4.30')
            ],
          ),
        ],
      ),
      Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey.shade800),
          Transform.translate(
              offset: Offset(-12, 0),
              child: Text(
                '25',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              )),
        ],
      ),
    ],
  );
}

Widget drawTitle() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
    child: Text(
      'We also talk about the future of work as the robots',
      style: TextStyle(color: Colors.grey.shade900),
    ),
  );
}

Widget drawhashtag() {
  return Container(
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Text(
              '#advanced',
              style: TextStyle(color: Colors.orange),
            )),
            FlatButton(
            onPressed: () {},
            child: Text(
              '#advanced',
              style: TextStyle(color: Colors.orange),
            )),
            FlatButton(
            onPressed: () {},
            child: Text(
              '#advanced',
              style: TextStyle(color: Colors.orange),
            )),
      ],
    ),
  );
}



Widget drawfoter() {
 return Row
 (
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: <Widget>
   [
     FlatButton(onPressed: (){}, child: Text('10 COMMENTS ',style: TextStyle(color: Colors.orange),)),
       FlatButton(onPressed: (){}, child: Text('SHARE',style: TextStyle(color: Colors.orange),)),
         FlatButton(onPressed: (){}, child: Text('OPEN ',style: TextStyle(color: Colors.orange),)),
   ],

 )
 ;
}
