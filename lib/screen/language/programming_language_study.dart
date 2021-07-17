import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class ProgrammingLanguageStudy extends StatelessWidget {
  final int id;
  const ProgrammingLanguageStudy({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final programmingLanguage = language.firstWhere((e) => e.id == id);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
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
                  child: Image.asset(
                    programmingLanguage.imagePath,
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([]))
          ],
        ),
      ),
    );
  }
}

/**
 *  floating: true,
            pinned: false,
            elevation: 0,
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
            backgroundColor: Colors.brown[100],
            title: Text(
              'C/C++ Programming',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1,
                  fontFamily: 'Ubuntu'),
            ),
 */
