import 'package:flutter/material.dart';
import 'package:news_application/pagemodel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'screens/home_screen.dart';
 ValueNotifier<int> pageviewernotifier=ValueNotifier(0);

class OnBording extends StatefulWidget {
  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  
 
List<Pagemodel> pages;

void getpages()
{
  pages=List<Pagemodel>();
pages.add(Pagemodel(title:'Welcome1', description: '1-Making Friends is easy as waving your hand  back and forth is easy step', icons:Icons.ac_unit));
pages.add(Pagemodel(title:'Welcome2', description: '2-Making Friends is easy as waving your hand  back and forth is easy step', icons:Icons.print));
pages.add(Pagemodel(title:'Welcome3', description: '3-Making Friends is easy as waving your hand  back and forth is easy step', icons:Icons.access_alarm));
pages.add(Pagemodel(title:'Welcome4', description: '4-Making Friends is easy as waving your hand  back and forth is easy step', icons:Icons.account_balance));

}

 
  @override
  Widget build(BuildContext context) {
    
  
  getpages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, item) {
              return Stack(
                children: <Widget>[
                  Container(
                   color: Colors.blueGrey
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0, -100),
                                              child: Icon(
                          pages[item].icons,
                          size: 150,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        pages[item].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 48, left: 48,top: 18),
                        child: Text(
                          pages[item].description,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index)
            {
              pageviewernotifier.value=index;


            },
          ),
          Transform.translate(
            offset: Offset(0, 175),
                      child: Align(
              alignment: Alignment.center,
              child:displayindicatorr(pages.length),


        
              


            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24,right: 16,left: 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                              child: RaisedButton(
                  color: Colors.red.shade800,
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing: 1),
                  ),
                  onPressed: ( ) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                     
                      return Homescreen();



                    }));


                 
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
Widget displayindicatorr(int length)
{

return PageViewIndicator(
  pageIndexNotifier:pageviewernotifier,
  length: length,
  normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
  highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
);




}


