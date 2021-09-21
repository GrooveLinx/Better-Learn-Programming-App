import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String topicTitle;
  final Function onTap;
  const CustomAppBar({Key key, this.topicTitle, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.blueGrey,
          size: 30,
        ),
        onPressed: onTap,
      ),
      backgroundColor: Colors.brown[50].withOpacity(.3),
      elevation: 0.0,
      title: Text(
        topicTitle,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: Colors.brown[500],
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
