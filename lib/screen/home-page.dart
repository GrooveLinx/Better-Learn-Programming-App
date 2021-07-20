import 'package:code_quiz_v2/screen/pages/bookmart-page.dart';
import 'package:code_quiz_v2/screen/pages/developer-page.dart';
import 'package:code_quiz_v2/screen/pages/online-books-page.dart';
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
      bottomNavigationBar: ClipRRect(
        child: BottomAppBar(
          color: Colors.brown[200],
          child: Container(
            height: MediaQuery.of(context).size.height * .1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    icon: currentTab == 0 ? Mdi.home : Mdi.homeOutline,
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
                    icon: currentTab == 1 ? Mdi.bookVariant : Mdi.bookOutline,
                    color: currentTab == 1 ? Colors.black : Colors.black45,
                    iconInfo: 'Bookmark',
                  ),
                ),
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
                    icon: currentTab == 2
                        ? Mdi.chartAreasplineVariant
                        : Mdi.chartLineStacked,
                    color: currentTab == 2 ? Colors.black : Colors.black45,
                    iconInfo: 'Quiz',
                  ),
                ),
                MaterialButton(
                  splashColor: Colors.transparent,
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = OnlineBookPage();
                      currentTab = 3;
                    });
                  },
                  child: BottomNavMenu(
                    icon: currentTab == 3
                        ? Mdi.bookOpenPageVariant
                        : Mdi.bookOpenBlankVariant,
                    color: currentTab == 3 ? Colors.black : Colors.black45,
                    iconInfo: 'Books',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
