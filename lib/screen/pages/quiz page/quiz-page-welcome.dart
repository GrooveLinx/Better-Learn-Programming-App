import 'package:auto_size_text/auto_size_text.dart';
import 'package:code_quiz_v2/screen/pages/quiz%20page/quiz-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizWelcomePage extends StatefulWidget {
  const QuizWelcomePage({Key key}) : super(key: key);

  @override
  _QuizWelcomePageState createState() => _QuizWelcomePageState();
}

class _QuizWelcomePageState extends State<QuizWelcomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffece4ff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(
              'images/town.svg',
              height: height * .3,
              // width: width * .6,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: AutoSizeText(
                'Test your programming and coding skills with quizzes.\nPrepare yourself for the job interview! ',
                textAlign: TextAlign.center,
                maxLines: 5,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Color(0xff5c4450),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Material(
              color: Colors.transparent,
              child: GestureDetector(
                child: Container(
                  height: 70,
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
                        blurRadius: 10,
                        offset: Offset(5, 3),
                      )
                    ],
                    color: Color(0xFF442C3E),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      'Start Quiz',
                      minFontSize: 32,
                      style: GoogleFonts.poppins(
                        letterSpacing: 1,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
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
