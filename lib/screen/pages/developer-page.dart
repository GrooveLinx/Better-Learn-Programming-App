import 'package:code_quiz_v2/screen/pages/topic-page.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Mdi.backburger,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (_) => TopicPage()));
            }),
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
