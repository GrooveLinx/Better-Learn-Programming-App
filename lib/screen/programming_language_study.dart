import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/models/language-model.dart';
import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class ProgrammingLanguageStudy extends StatefulWidget {
  final int id;
  const ProgrammingLanguageStudy({Key key, this.id}) : super(key: key);

  @override
  _ProgrammingLanguageStudyState createState() =>
      _ProgrammingLanguageStudyState();
}

class _ProgrammingLanguageStudyState extends State<ProgrammingLanguageStudy> {
  @override
  Widget build(BuildContext context) {
    final programmingLanguage = language.firstWhere((e) => e.id == widget.id);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 10),
              sliver: SliverAppBar(
                leading: IconButton(
                    icon: Icon(
                      Mdi.arrowLeftBoldOutline,
                      color: Colors.blueGrey[600],
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => TopicPage()));
                    }),
                backgroundColor: Colors.transparent,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Hero(
                    tag: programmingLanguage.id,
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
              padding: EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.red[100].withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                programmingLanguage.name,
                                style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                    color: Colors.black87),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .02,
                              ),
                              Text(
                                programmingLanguage.info,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                          IconButton(
                              icon: Icon(
                                programmingLanguage.isFav
                                    ? Mdi.star
                                    : Mdi.starOutline,
                                size: 40,
                              ),
                              color: programmingLanguage.isFav
                                  ? Colors.yellowAccent[700]
                                  : Colors.black,
                              onPressed: () {
                                setState(() {
                                  programmingLanguage.isFav =
                                      !programmingLanguage.isFav;
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                )
              ])),
            )
          ],
        ),
      ),
    );
  }
}
