import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class OnlineBookPage extends StatelessWidget {
  const OnlineBookPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Online Books',
          style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              letterSpacing: 1.1,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
