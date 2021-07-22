import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicsProgram extends StatelessWidget {
  final String topicProgram;
  const TopicsProgram({Key key, this.topicProgram}) : super(key: key);

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
            topicProgram,
            style: GoogleFonts.poppins(
                letterSpacing: 0.5,
                color: Colors.brown[500],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
