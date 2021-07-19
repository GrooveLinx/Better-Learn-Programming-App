import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class TopicsIntro extends StatelessWidget {
  final String topicTitle;
  final int topicId;
  final String topicDescription;
  const TopicsIntro(
      {Key key, this.topicTitle, this.topicDescription, this.topicId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.height * .05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.brown[100],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Mdi.codeArray,
                color: Colors.brown[400],
                size: 25,
              ),
              // Flexible(
              //   child: Text(
              //     '${topicId.toString()}',
              //     style: GoogleFonts.poppins(
              //       textStyle: TextStyle(
              //           color: Colors.brown[500],
              //           fontSize: 18,
              //           fontWeight: FontWeight.w500),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple[50],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topicTitle,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.brown[500],
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  topicDescription,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.brown[500],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
