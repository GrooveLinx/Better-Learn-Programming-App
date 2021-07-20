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
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink[50],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFE6E6E6), //color of shadow
              spreadRadius: -15, //spread radius
              blurRadius: 17, // blur radius
              offset: Offset(0, 17),
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                FittedBox(
                  child: Hero(
                    tag: heroTag,
                    child: Image.asset(
                      imagePath,
                      height: height / 5,
                      width: width / 2,
                    ),
                  ),
                ),
                Spacer(),
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
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
