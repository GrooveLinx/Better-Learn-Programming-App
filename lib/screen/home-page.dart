import 'package:code_quiz_v2/screen/pages/bookmart-page.dart';
import 'package:code_quiz_v2/screen/pages/developer-page.dart';
import 'package:code_quiz_v2/screen/pages/floating-page.dart';
import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:code_quiz_v2/screen/pages/quiz-page.dart';
import 'package:code_quiz_v2/widgets/bottom-nav-menu.dart';
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
    BooksmartPage(),
    DeveloperPage(),
    QuizPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = TopicPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height * .18,
        width: MediaQuery.of(context).size.width * .18,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: Color(0xffe5bca5),
              child: Icon(
                Mdi.bookOpenPageVariant,
                color: Colors.brown[600],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FloatingPage()));
              }),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: BottomAppBar(
          color: Color(0xffe5bca5),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * .1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      splashColor: Colors.transparent,
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = TopicPage();
                          currentTab = 0;
                        });
                      },
                      child: BottomNavMenu(
                        icon: Mdi.home,
                        color: currentTab == 0 ? Colors.black : Colors.black45,
                        iconInfo: 'Home',
                      ),
                    ),
                    MaterialButton(
                      focusElevation: 0.0,
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = BooksmartPage();
                          currentTab = 1;
                        });
                      },
                      child: BottomNavMenu(
                        icon: Mdi.bookVariant,
                        color: currentTab == 1 ? Colors.black : Colors.black45,
                        iconInfo: 'Bookmark',
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      splashColor: Colors.transparent,
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = QuizPage();
                          currentTab = 2;
                        });
                      },
                      child: BottomNavMenu(
                        icon: Mdi.chartLineStacked,
                        color: currentTab == 2 ? Colors.black : Colors.black45,
                        iconInfo: 'Quiz',
                      ),
                    ),
                    MaterialButton(
                      splashColor: Colors.transparent,
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = DeveloperPage();
                          currentTab = 3;
                        });
                      },
                      child: BottomNavMenu(
                        icon: Mdi.developerBoard,
                        color: currentTab == 3 ? Colors.black : Colors.black45,
                        iconInfo: 'Developer',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
