import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/widgets/language_grid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffee),
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        elevation: 0,
        title: Text(
          'CodeQuiz',
          style: GoogleFonts.podkova(
            textStyle: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.purple[100],
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
                    child: SafeArea(
                      child: Flexible(
                        child: Text(
                          'Learn & Test\nYour Coding Skills!',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.brown[700],
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .013,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: GridView.builder(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
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
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
