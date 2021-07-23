import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/screen/pages/developer-page.dart';
import 'package:code_quiz_v2/widgets/language_grid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      backgroundColor: Color(0xffffffee),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[100],
        elevation: 0,
        title: Text(
          'CodeQuiz',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
              color: Colors.black54,
              letterSpacing: 1.1,
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Mdi.developerBoard,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DeveloperPage(),
                ),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen[100],
            ),
            height: height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 0,
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Learn once\nProgram\nanywhere!',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.blueGrey[600],
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    /*  SvgPicture.asset(
                      'images/dedicated-team.svg',
                      width: width / 3,
                      height: height / 5,
                    ), */
                    Image.asset(
                      'images/dev.png',
                      width: width * .5,
                      height: height * .25,
                      alignment: Alignment.centerRight,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
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
                        childAspectRatio: aspectRatio / .85,
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
