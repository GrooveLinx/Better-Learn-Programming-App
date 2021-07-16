import 'package:flutter/material.dart';

class BooksmartPage extends StatelessWidget {
  const BooksmartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Bookmark',
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
