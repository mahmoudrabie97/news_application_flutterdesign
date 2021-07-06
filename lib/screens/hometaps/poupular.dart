import 'package:flutter/material.dart';

class Poupular extends StatefulWidget {
  @override
  _PoupularState createState() => _PoupularState();
}

class _PoupularState extends State<Poupular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,position)
      {
        return Card
        (
          child: singlerow(),


        );



      },
    
      
    );
  }
}

Widget singlerow() {
  return Padding(
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
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
