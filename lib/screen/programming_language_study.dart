import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/models/language-model.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class ProgrammingLanguageStudy extends StatefulWidget {
  final CategoryTopic categoryTopicRef;
  final int id;

  const ProgrammingLanguageStudy({Key key, this.id, this.categoryTopicRef})
      : super(key: key);

  @override
  _ProgrammingLanguageStudyState createState() =>
      _ProgrammingLanguageStudyState();
}

class _ProgrammingLanguageStudyState extends State<ProgrammingLanguageStudy> {
  @override
  Widget build(BuildContext context) {
    final programmingLanguage = language.firstWhere((e) => e.id == widget.id);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 5),
              sliver: SliverAppBar(
                // brightness: Brightness.light,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blueGrey[600],
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TopicPage()));
                  },
                ),
                backgroundColor: Colors.grey[100],
                expandedHeight: height / 3,
                flexibleSpace: FlexibleSpaceBar(
                  background: Hero(
                    tag: programmingLanguage.imagePath,
                    child: FittedBox(
                      child: Image.asset(
                        programmingLanguage.imagePath,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SafeArea(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      programmingLanguage.name,
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: Colors.purple[900],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height / 25,
                                    ),
                                    Text(
                                      programmingLanguage.info,
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.purpleAccent[400]),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  programmingLanguage.isFav
                                      ? Mdi.star
                                      : Mdi.starOutline,
                                  size: 40,
                                ),
                                color: programmingLanguage.isFav
                                    ? Colors.blueGrey[700]
                                    : Colors.black54,
                                onPressed: () {
                                  setState(
                                    () {
                                      programmingLanguage.isFav =
                                          !programmingLanguage.isFav;
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Flexible(
                            child: Text(
                              programmingLanguage.description,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LanguageTilePage(
                                  id: programmingLanguage.id,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.purple[50],
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              leading: Container(
                                child: FittedBox(
                                  child: Image.asset(
                                      programmingLanguage.imagePath),
                                ),
                              ),
                              title: Text(
                                'Learn ${programmingLanguage.name}',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.teal[700],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                'Basic to Advanced',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              trailing: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LanguageTilePage()));
                                },
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Mdi.arrowRightCircleOutline,
                                    size: 30,
                                    color: Colors.black45,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            LanguageTilePage(
                                          id: programmingLanguage.id,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
