import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:code_quiz_v2/screen/pages/online%20book/online-books-page.dart';
import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:code_quiz_v2/screen/pages/quiz%20page/quiz-page-welcome.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> pages = [
    TopicPage(),
    QuizWelcomePage(),
    OnlineBookPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pages,
        index: currentTab,
      ),
      bottomNavigationBar: BottomNavyBar(
        itemCornerRadius: 50,
        containerHeight: MediaQuery.of(context).size.height * .09,
        backgroundColor: Colors.brown[200],
        selectedIndex: currentTab,
        animationDuration: Duration(milliseconds: 300),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        onItemSelected: (index) {
          setState(() {
            currentTab = index;
          });
        },
        items: [
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(
              currentTab == 0 ? Mdi.home : Mdi.homeOutline,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Quiz'),
            textAlign: TextAlign.center,
            icon: Icon(
              currentTab == 1
                  ? Mdi.chartAreasplineVariant
                  : Mdi.chartLineStacked,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
          ),
          BottomNavyBarItem(
            title: Text('Books'),
            textAlign: TextAlign.center,
            icon: Icon(
              currentTab == 2 ? Mdi.book : Mdi.bookOutline,
              size: 30,
            ),
            activeColor: Colors.black,
            inactiveColor: Colors.black54,
          ),
        ],
      ),
    );
  }
}
