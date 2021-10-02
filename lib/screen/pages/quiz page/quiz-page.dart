import 'package:code_quiz_v2/database/quiz-question.dart';
import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF442C3E),
        title: Text(
          'Take a Quiz',
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        centerTitle: false,
        elevation: 19,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => TopicPage(),
              ),
            );
          },
        ),
      ),
      body: Container(
        color: Colors.amber[50],
        child: SafeArea(
          child: Builder(
            builder: (BuildContext context) => Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * .02),
                    SvgPicture.asset(
                      'images/question.svg',
                      height: 200,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: height * .02),
                    question(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          preQuestion(),
                          chechkAnswerTrue(context),
                          checkAnswerFalse(context),
                          nextQuestion(),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

// <<<==========   QUESTION BOX ==========>>>

  Padding question() {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 30, right: 30, bottom: 38),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: height * .30,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 5),
              blurRadius: 17,
              color: Color(0xFFb36349),
              spreadRadius: 1.4,
            )
          ],
          color: Color(0xFFb3635b),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            //   style: BorderStyle.solid,
            color: Color(0xFFb3635b),
          ),
        ),
        //height: MediaQuery.of(context).size.height * 0.23,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Text(
              questionBank[_currentIndex % questionBank.length].questionText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

// <<<==========  PRE QUESTION  ==========>>>

  Container preQuestion() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 6),
            blurRadius: 10,
            color: Color(0xFFA0766E),
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Colors.white24,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF494b68),
        ),
        onPressed: () {
          setState(
            () {
              _currentIndex--;
            },
          );
        },
        child: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
      ),
    );
  }

// <<<==========  TRUE ANSWER  ==========>>>

  Container chechkAnswerTrue(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(2, 5),
              blurRadius: 10,
              color: Color(0xFFA0766E),
              spreadRadius: 2)
        ],
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Colors.white24,
        ),
      ),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF494b68),
          ),
          onPressed: () => _checkAnswer(false, context),
          child: Text(
            'True',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

// <<<========== FALSE ANSWER  ==========>>>

  Container checkAnswerFalse(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(2, 5),
              blurRadius: 10,
              color: Color(0xFFA0766E),
              spreadRadius: 2)
        ],
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          //  style: BorderStyle.solid,
          color: Colors.white24,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF494b68),
        ),
        onPressed: () => _checkAnswer(false, context),
        child: Text(
          'False',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

//  <<<========== NEXT QUESTION  ==========>>>

  Container nextQuestion() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(2, 5),
              blurRadius: 10,
              color: Color(0xFFA0766E),
              spreadRadius: 2)
        ],
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Colors.white24,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF494b68),
        ),
        onPressed: () {
          setState(
            () {
              _currentIndex++;
            },
          );
        },
        child: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        ),
      ),
    );
  }

// <<<==========  STATE CHECK (ANSWER ANALYSIS SECTION)  ==========>>>
  _checkAnswer(bool ansChoice, BuildContext context) {
    if (ansChoice == questionBank[_currentIndex].isCorrect) {
      setState(
        () {
          _currentIndex = (_currentIndex + 1) % questionBank.length;
        },
      );
      debugPrint('yes correct');
      final snackBar = SnackBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22.0),
            topRight: Radius.circular(22.0),
          ),
        ),
        backgroundColor: Colors.green.withOpacity(0.9),
        duration: Duration(milliseconds: 300),
        content: Text(
          'Correct',
          style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      debugPrint('incorrect');
      final snackBar = SnackBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22.0),
            topRight: Radius.circular(22.0),
          ),
        ),
        backgroundColor: Colors.red.withOpacity(0.9),
        duration: Duration(milliseconds: 300),
        content: Text(
          'Wrong',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w500,
          ),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
