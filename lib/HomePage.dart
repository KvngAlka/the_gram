import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thegram/Screens/Charts.dart';
import 'package:thegram/Screens/Home.dart';
import 'package:thegram/Screens/Profile.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int initialPage = 0;
  int currentPage;
  PageController _pageController ;

  @override
  void initState() {
    _pageController = PageController(initialPage: initialPage, keepPage: true);
    currentPage = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color:currentPage == 0 ? Colors.pinkAccent : Colors.grey,size: 30,),onPressed: (){
              setState(() {
                currentPage = 0;
              });
              _pageController.jumpToPage(currentPage);
            },),
            IconButton(icon: Icon(Icons.chat, color: currentPage == 1 ? Colors.pinkAccent : Colors.grey,size: 30,),onPressed: (){
              setState(() {
                currentPage = 1;
              });
              _pageController.jumpToPage(currentPage);
            },),
            IconButton(icon: Icon(Icons.person, color: currentPage == 2 ? Colors.pinkAccent : Colors.grey,size: 30,),onPressed: (){
              setState(() {
                currentPage = 2;
              });
              _pageController.jumpToPage(currentPage);
            },),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Home(),
          ChartPage(),
          ProfilePage()
        ],
      ),
    );
  }
}
