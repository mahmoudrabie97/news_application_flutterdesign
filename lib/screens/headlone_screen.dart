import 'package:flutter/material.dart';
import 'package:news_application/screens/hometaps/favourite.dart';
import 'package:news_application/screens/hometaps/poupular.dart';
import 'package:news_application/shared_ui/navigator_drawer.dart';

class Headlinescreen extends StatefulWidget {
  @override
  _HeadlinescreenState createState() => _HeadlinescreenState();
}

class _HeadlinescreenState extends State<Headlinescreen>with TickerProviderStateMixin {
   TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Head line News'),
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
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      drawer: Navigatordrawer(),
      body: Center(
        child: TabBarView(
          children: [
             Favourite(),
            Poupular(),
            Favourite(),
    






          ],
          controller: _tabController,
        ),
      ),
    );
  }
}