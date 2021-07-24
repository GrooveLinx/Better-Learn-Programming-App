import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Mdi.backburger,
            size: 30,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (_) => TopicPage()));
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Developer',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
              color: Colors.blueGrey,
              fontSize: 26,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
            height: height * .35,
            width: double.infinity,
            child: Image.asset(
              'images/dev.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: height * .02,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(400),
                          child: Image.asset(
                            'images/ripplebee_logo.png',
                            height: height * .15,
                            width: width * .25,
                            fit: BoxFit.contain,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              // color: Colors.blueGrey[100],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                            ),
                            width: width * .7,
                            child: Center(
                              child: Text(
                                'Developed by\nThe Geeks of RippleBee',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
