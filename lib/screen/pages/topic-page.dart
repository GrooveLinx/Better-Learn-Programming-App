import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/widgets/language_grid.dart';
import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffee),
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        elevation: 0,
        title: Text(
          'CodeQuiz',
          style: TextStyle(
              color: Colors.purple[900],
              fontSize: 30,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.brown[100],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0))),
            height: MediaQuery.of(context).size.height * .3,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      'Learn Programming &\nTest Your Coding Skills!',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        color: Colors.teal[800],
                        letterSpacing: 1.2,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.all(15),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 25,
                        mainAxisSpacing: 25,
                        crossAxisCount: 2,
                        childAspectRatio:
                            MediaQuery.of(context).size.aspectRatio * 1.4,
                      ),
                      itemCount: language.length,
                      itemBuilder: (BuildContext context, int index) =>
                          LanguageGrid(
                            languageData: language[index],
                          ))),
            ],
          )
        ],
      ),
    );
  }
}
