import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Topics/topic_1.dart';
import 'package:code_quiz_v2/provider/Topics/topic_10.dart';
import 'package:code_quiz_v2/provider/Topics/topic_3.dart';
import 'package:code_quiz_v2/provider/Topics/topic_4.dart';
import 'package:code_quiz_v2/provider/Topics/topic_5.dart';
import 'package:code_quiz_v2/provider/Topics/topic_6.dart';
import 'package:code_quiz_v2/provider/Topics/topic_7.dart';
import 'package:code_quiz_v2/provider/Topics/topic_8.dart';
import 'package:code_quiz_v2/provider/Topics/topic_9.dart';
import 'package:code_quiz_v2/screen/programming_language_study.dart';
import 'package:code_quiz_v2/widgets/category-tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageTilePage extends StatelessWidget {
  final int id;
  const LanguageTilePage({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageTile = categoryTile.firstWhere((e) => e.id == id);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueGrey,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ProgrammingLanguageStudy(),
              ),
            );
          },
        ),
        title: Text(
          languageTile.name,
          style: GoogleFonts.podkova(
            textStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                SvgPicture.asset(
                'images/report.svg',
                width: width * .45,
                alignment: Alignment.centerLeft,
              ),
              Image.asset(
                languageTile.imagePath,
                width: width * .4,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                height: height,
                width: width,
                margin: EdgeInsets.only(top: 10),
                color: Colors.amber[50],
                child: ListView(
                  padding: EdgeInsets.only(top: 10),
                  children: [
                    CategoryTile(
                      dbTitle: languageTile.topic1,
                      customSubtitle:
                          'It\'s the first program of all Programming Language.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic1(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic3,
                      customSubtitle:
                          'A set of values and is determined to act on those values.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic3(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic4,
                      customSubtitle:
                          'Conditions are using for checking states or execute particular work.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic4(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic5,
                      customSubtitle:
                          'Using for emplementing the same work for a number of time.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic5(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic6,
                      customSubtitle:
                          'A function is a block of code that performs a specific task.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic6(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic7,
                      customSubtitle:
                          'An array is a variable that can store multiple values.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic7(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic8,
                      customSubtitle:
                          'Mathematical and Logical term exercises and implement.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic8(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic9,
                      customSubtitle: 'A string is a sequence of characters.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic9(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                    CategoryTile(
                      dbTitle: languageTile.topic10,
                      customSubtitle: 'Object Oriented Programming.',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topic10(
                              id: languageTile.id,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
