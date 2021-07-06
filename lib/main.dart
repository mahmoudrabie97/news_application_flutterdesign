import 'package:flutter/material.dart';
import 'package:news_application/onboarding.dart';
import 'package:news_application/utilites/themes.dart';

void main()
{
runApp(Newsapp());
}
class Newsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  Apptheme.apptheme,
      home: OnBording(),
      
    );
  }
}
