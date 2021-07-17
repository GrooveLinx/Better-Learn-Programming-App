import 'package:code_quiz_v2/screen/home-page.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class FloatingPage extends StatelessWidget {
  const FloatingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Mdi.backburger,
              size: 30.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            }),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(''),
      ),
    );
  }
}
