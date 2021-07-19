import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_1.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_10.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_2.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_3.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_5.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_7.dart';
import 'package:code_quiz_v2/screen/language_learning/Topics/topic_8.dart';
import 'package:code_quiz_v2/screen/programming_language_study.dart';
import 'package:code_quiz_v2/widgets/category-tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';
import 'Topics/topic_4.dart';
import 'Topics/topic_6.dart';
import 'Topics/topic_9.dart';

class LanguageTilePage extends StatelessWidget {
  final int id;
  const LanguageTilePage({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageTile = categoryTile.firstWhere((e) => e.id == id);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Mdi.arrowLeftBoldOutline,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                languageTile.imagePath,
                height: 200,
                width: 200,
              ),
            ],
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: ListView(
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
                    dbTitle: languageTile.topic2,
                    customSubtitle:
                        'Every programming language has it\'s own syntax.',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Topic2(
                            id: languageTile.id,
                          ),
                        ),
                      );
                    },
                  ),
                  CategoryTile(
                    dbTitle: languageTile.topic3,
                    customSubtitle: 'There are various kinds of data-types.',
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
                    customSubtitle: 'These are used for case checking.',
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
                        'Using for excute the same work for many times.',
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
                        'A function is a block of code that performs a specific task',
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
                        'Array is a variable that can store multiple values',
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
                        'Pointers are special variables that are used to store addresses.',
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
                    customSubtitle: 'String is a sequence of characters.',
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
                    customSubtitle:
                        'A struct is a collection of variables under a single name.',
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
                  CategoryTile(
                    dbTitle: languageTile.topic11,
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
        ],
      ),
    );
  }
}
