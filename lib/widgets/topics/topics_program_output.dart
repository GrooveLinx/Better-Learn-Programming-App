import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicsProgramOutput extends StatelessWidget {
  final String topicProgramOutput;
  const TopicsProgramOutput({Key key, this.topicProgramOutput})
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
            'Output',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            topicProgramOutput,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
