import 'package:flutter/material.dart';

class Whatisnew extends StatefulWidget {
  @override
  _WhatisnewState createState() => _WhatisnewState();
}

class _WhatisnewState extends State<Whatisnew> {
  Widget drawheader() {
    TextStyle hedertitle = TextStyle(
        color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600);
    TextStyle headerdescription = TextStyle(color: Colors.white, fontSize: 18);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      color: Colors.brown,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 48, left: 48),
              child: Text(
                'How terriers &Royals Getecrached final',
                style: hedertitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32, left: 32.0),
              child: Text(
                'lorem ipsum dolor sit amet consectctur adipiscing elit ,sed do eiusomed',
                style: headerdescription,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget drawtopstories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: drawsectiontitle('top stories'),
          ),
          Card(
            child: Column(
              children: <Widget>[
                singlerow(),
                drawdriver(),
                singlerow(),
                drawdriver(),
                singlerow(),
                drawdriver(),
               
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>
              [
                Padding(
                  padding: const EdgeInsets.only(left: 16,top: 8,bottom: 8),
                  child: drawsectiontitle('Recent updates'),
                ),
                drawrecentcard(),
                 drawrecentcard(),
                


              ],
            ),
          
          
          )
        ],
      ),
    );
  }
  Widget singlerow()
  {
    return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'the world global warming annual sumit ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),

                            ),
                            SizedBox(height: 16,),
                            Text('michle Adms'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.timer),
                                Text('15 min'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                
  }
  Widget drawdriver()
  {
return Container
(
height: 1,
width: double.infinity,
color: Colors.grey.shade100,



);

  }
  Widget drawsectiontitle(title)
  {
    return Text(
              title,
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            );

    
  }
  Widget drawrecentcard()
  {
    return Card
    (
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>
        [
        Container
        (
          color: Colors.black,
          width: double.infinity,
          height: MediaQuery.of(context).size.height*.25,

        ),
        Container
        (
        padding: EdgeInsets.only(left:16, right: 16,top: 4,bottom: 4),
          color: Colors.deepOrange,
          child: Text('Sport',style: TextStyle(color: Colors.white),),
        ),
        ],


      ),


    );


  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          drawheader(),
          drawtopstories(),
        ],
      ),
    );
  }
}
