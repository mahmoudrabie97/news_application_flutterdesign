import 'package:flutter/material.dart';
import 'package:news_application/shared_ui/navigator_drawer.dart';
import 'package:news_application/screens/hometaps/whatisnew.dart';
import 'package:news_application/screens/hometaps/poupular.dart';
import 'package:news_application/screens/hometaps/favourite.dart';


class Homescreen extends StatefulWidget {
  
  @override
  _HomescreenState createState() => _HomescreenState();

}
enum popoutmenue
{
  Help,About,Contact,Setting
}


class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
      
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorer'),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'What is New',
            ),
            Tab(
              text: 'Poubular ',
            ),
            Tab(
              text: ' Favourit',
            ),
            //مش هيشتغل يا طبعا غير لما تضفله conroller:)
          ],
          controller: _tabController,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          popoutmenu( context),
         
        ],
      ),
      drawer: Navigatordrawer(),
      body: Center(
        child: TabBarView(
          children: [
            Whatisnew(),
            Poupular(),
            Favourite(),
    






          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
Widget popoutmenu(BuildContext context)
{
  return PopupMenuButton<popoutmenue>(itemBuilder: (context)
  {
    return 
    [
      PopupMenuItem<popoutmenue>
      (
        value: popoutmenue.About,
        child: Text('About'),
        ),
        PopupMenuItem<popoutmenue>
      (
        value: popoutmenue.Contact,
        child: Text('Contact'),
        ),
        PopupMenuItem<popoutmenue>
      (
        value: popoutmenue.Help,
        child: Text('Help'),
        ),
        PopupMenuItem<popoutmenue>
      (
        value: popoutmenue.Setting,
        child: Text('Setting'),
        
        ),

    ];
    


  },
  onSelected: (popoutmenue menue)
  {

  },

  );

}
