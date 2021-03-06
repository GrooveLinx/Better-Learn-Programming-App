import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';
import 'package:url_launcher/url_launcher.dart';

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
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Developer',
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Colors.blueGrey,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              //color: Colors.pink[50],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
            height: height * .3,
            width: width * .8,
            child: SvgPicture.asset(
              'images/codethink.svg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
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
                padding: const EdgeInsets.only(
                  top: 15,
                ),
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
                            height: 100,
                            width: 100,
                            fit: BoxFit.contain,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .6,
                          decoration: BoxDecoration(
                            color: Color(0xFF442C3E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.developer_board,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Developers',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // _openFacebookLink(
                            //     'https://www.facebook.com/rippledevs/');
                          },
                          icon: Icon(
                            Mdi.facebook,
                            size: 45,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .13,
                        ),
                        IconButton(
                          onPressed: () {
                            // _openLinkedInLink(
                            //     'https://www.linkedin.com/company/ripplebee/');
                          },
                          icon: Icon(
                            Mdi.linkedin,
                            size: 45,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .13,
                        ),
                        IconButton(
                          onPressed: () {
                            // _openTwitterLink('https://twitter.com/rippledevs');
                          },
                          icon: Icon(
                            Mdi.twitter,
                            size: 45,
                            color: Colors.blueGrey,
                          ),
                        )
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
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                // topRight: Radius.circular(25),
                              ),
                            ),
                            width: width,
                            child: Center(
                              child: Text(
                                'Powered by\nGeeks of RippleBee',
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

Future<void> _openFacebookLink(String url) async {
  try {
    await launch(url);
  } catch (err) {
    print('could not launch $url');
  }
}

Future<void> _openLinkedInLink(String url) async {
  try {
    await launch(url);
  } catch (err) {
    print('could not launch $url');
  }
}

Future<void> _openTwitterLink(String url) async {
  try {
    await launch(url);
  } catch (err) {
    print('could not launch $url');
  }
}
