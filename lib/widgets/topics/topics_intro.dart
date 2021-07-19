import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicsIntro extends StatelessWidget {
  final String topicTitle;
  final String topicDescription;
  const TopicsIntro({Key key, this.topicTitle, this.topicDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
    );
  }
}