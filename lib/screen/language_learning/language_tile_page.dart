import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/screen/programming_language_study.dart';
import 'package:code_quiz_v2/widgets/category-tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class LanguageTilePage extends StatelessWidget {
  final int id;
  const LanguageTilePage({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageTile = categoryTile.firstWhere((e) => e.id == id);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  fontSize: 30)),
        ),
      ),
      body: ListView(
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
          CategoryTile(
            dbTitle: languageTile.topic1,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic2,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic3,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic4,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic5,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic6,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic7,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic8,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic9,
            onTap: () {},
          ),
          CategoryTile(
            dbTitle: languageTile.topic10,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
