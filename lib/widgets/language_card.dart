import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String languageName;
  final String imagePath;
  final Color color;
  final Function onTap;
  HomeCard({this.imagePath, this.languageName, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
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
                Image.network(
                  imagePath,
                  height: MediaQuery.of(context).size.height * .15,
                  width: MediaQuery.of(context).size.width * .30,
                  fit: BoxFit.cover,
                ),
                Spacer(),
                Text(
                  languageName,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff3e2723),
                      fontFamily: 'Ubuntu',
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.bold),
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
