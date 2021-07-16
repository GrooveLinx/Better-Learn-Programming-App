import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Developer',
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
