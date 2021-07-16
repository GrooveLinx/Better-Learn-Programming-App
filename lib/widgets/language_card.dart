import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String languageName;
  final String imagePath;
  HomeCard({this.imagePath = '', this.languageName = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(
            imagePath,
            fit: BoxFit.cover,
            height: 120,
            width: 120,
          ),
          SizedBox(
            height: 10,
          ),
          Text(languageName),
        ],
      ),
      color: Colors.white,
    );
  }
}
