import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class TopicsIntro extends StatefulWidget {
  final String topicTitle;
  final int topicId;
  final String topicDescription;
  final IconData icon;
  final Function onPressed;
  const TopicsIntro({
    Key key,
    this.topicTitle,
    this.topicDescription,
    this.topicId,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  _TopicsIntroState createState() => _TopicsIntroState();
}

class _TopicsIntroState extends State<TopicsIntro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown[100],
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Mdi.codeArray,
                    color: Colors.brown[400],
                    size: 25,
                  ),
                ),
              ],
            ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.topicTitle,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.blueGrey[600],
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.topicDescription,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
