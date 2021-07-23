import 'package:flutter/material.dart';

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
