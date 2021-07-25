import 'package:code_quiz_v2/screen/pages/quiz%20page/quiz-page.dart';
import 'package:flutter/material.dart';

class QuizWelcomePage extends StatelessWidget {
  const QuizWelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Color(0xFF442C3E),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              height: height * .5,
              width: width * 0.75,
              child: Center(
                child: Flexible(
                  child: Text(
                    'Test your programming and coding skills with quizzes.\n\nPrepare yourself for the job interview! ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        letterSpacing: 1.3,
                        color: Color(0xFF442C3E),
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Material(
              color: Colors.transparent,
              child: GestureDetector(
                child: Container(
                  height: height * 0.1,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF442C3E).withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(5, 3))
                    ],
                   // color: Color(0xFF442C3E),
                   color: Colors.blueGrey[100]
                  ),
                  child: Center(
                    child: Text(
                      'Start Quiz',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color(0xFF442C3E),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => QuizPage(),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
