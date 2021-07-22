import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicsCard extends StatelessWidget {
  final String languageName;
  final String imagePath;
  final Function onTap;
  final int heroTag;
  TopicsCard({
    this.imagePath,
    this.languageName,
    this.onTap,
    this.heroTag,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            ClipPath(
              clipper: LanguageCardClipper(),
              child: Container(
                decoration: BoxDecoration(
                  //border: Border.all(width: 1,color: Colors.pink[100]),
                  color: Colors.pink[50],
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE6E6E6), //color of shadow
                      spreadRadius: -15, //spread radius
                      blurRadius: 17, // blur radius
                      offset: Offset(0, 17),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,
                   bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        languageName,
                        style: GoogleFonts.cagliostro(
                          textStyle: TextStyle(
                            fontSize: 25,
                            color: Colors.teal[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: Text(
                          '${languageName} programming language.',
                          style: GoogleFonts.cagliostro(
                            textStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Hero(
                tag: heroTag,
                child: Image.asset(
                  imagePath,
                  height: height / 6,
                  width: width / 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - 10);
    path.quadraticBezierTo(0, size.height, 10, size.height);

    path.lineTo(size.width - 10, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 10);
    path.lineTo(size.width, 20);
    path.quadraticBezierTo(size.width, 0, size.width - 30, 20);
    path.lineTo(10, size.height * .33 + 5);
    path.quadraticBezierTo(
        0, size.height * .33 + 10, 0, size.height * .33 + 20);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


/**
 *  child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Spacer(),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      imagePath,
                      height: height / 5,
                      width: width / 2,
                    ),
                  ),
                  // Spacer(),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        languageName,
                        style: GoogleFonts.cagliostro(
                          textStyle: TextStyle(
                            fontSize: 23,
                            color: Colors.teal[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Spacer(),
                ],
              ),
            ),
          ),
        ),
 */