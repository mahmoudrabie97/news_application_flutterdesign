import 'package:flutter/material.dart';
import 'package:news_application/models/nav_menue.dart';
import 'package:news_application/screens/headlone_screen.dart';
import 'package:news_application/screens/home_screen.dart';
import 'package:news_application/screens/ingstram.dart';
import 'package:news_application/screens/twitter_feed.dart';
import 'package:news_application/screens/facebook.dart';

class Navigatordrawer extends StatefulWidget {
  @override
  _NavigatordrawerState createState() => _NavigatordrawerState();
}

class _NavigatordrawerState extends State<Navigatordrawer> {
  List<Navmeenueitem>navigatemenue =
  [
    Navmeenueitem(title: 'Explore', destenation: (){return Homescreen();}),
    Navmeenueitem(title: 'Head line NEWS', destenation: (){return Headlinescreen();}),
    Navmeenueitem(title: 'Twitter feed', destenation:(){return Twitterfeed();}),
    Navmeenueitem(title: 'Ingstram Field ', destenation:(){return Ingstram();}),
    Navmeenueitem(title: 'Facebook feeds', destenation: (){return Feacebook();}),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: 75, left: 32),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  navigatemenue[position].title,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
                onTap: () 
                {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder:(conext)
                  {
                    return navigatemenue[position].destenation();

                  }
                   )
                   );


                },
              ),
            );
          },
          itemCount: navigatemenue.length
        ),
      ),
    );
  }
}
