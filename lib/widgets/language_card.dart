import 'package:code_quiz_v2/config/customs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TopicsCard extends StatelessWidget {
  final String languageName;
  final String imagePath;
  final Function onTap;
  final String heroTag;
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
      child: Stack(
        children: [
          ClipShadow(
            clipper: RoundedDiagonalPathClipper(),
            boxShadow: softUiShadow,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color(0XffCDDEEC),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15),
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
                      height: height * .01,
                    ),
                    Flexible(
                      child: Text(
                        '$languageName programming language.',
                        style: GoogleFonts.cagliostro(
                          textStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .01,
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
    );
  }
}

// class LanguageCardClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();

//     path.moveTo(0, size.height * 0.33);
//     path.lineTo(0, size.height - 10);
//     path.quadraticBezierTo(0, size.height, 10, size.height);

//     path.lineTo(size.width - 10, size.height);
//     path.quadraticBezierTo(
//         size.width, size.height, size.width, size.height - 10);
//     path.lineTo(size.width, 20);
//     path.quadraticBezierTo(size.width, 0, size.width - 30, 20);
//     path.lineTo(10, size.height * .33 + 5);
//     path.quadraticBezierTo(
//         0, size.height * .33 + 10, 0, size.height * .33 + 20);
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
