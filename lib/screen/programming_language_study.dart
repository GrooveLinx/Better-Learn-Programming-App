import 'package:code_quiz_v2/database/language-list.dart';
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
      // backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 5),
              sliver: SliverAppBar(
                brightness: Brightness.light,
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                      color: Colors.purple[900]),
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
                                setState(() {
                                  programmingLanguage.isFav =
                                      !programmingLanguage.isFav;
                                });
                              })
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height * .4,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFE6E6E6), //color of shadow
                              spreadRadius: -15, //spread radius
                              blurRadius: 17, // blur radius
                              offset: Offset(0, 17),
                            )
                          ]),
                      child: Flexible(
                        child: Text(
                          programmingLanguage.description,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.black54),
                        ),
                      ),
                    )
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
