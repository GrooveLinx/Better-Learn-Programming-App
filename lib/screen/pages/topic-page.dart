import 'package:code_quiz_v2/widgets/language_card.dart';
import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.5),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(.5),
        elevation: 0,
        title: Text(
          'CodeQuiz',
          style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              letterSpacing: 1.1,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  'Learn Programming',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              crossAxisCount: 2,
              childAspectRatio: .85,
              children: [
                HomeCard(
                  onTap: () {},
                  color: Color(0xffcfd8dc),
                  imagePath:
                      'https://cdn.freebiesupply.com/logos/thumbs/2x/c-2975-logo.png',
                  languageName: 'C/C++',
                ),
                HomeCard(
                  onTap: () {},
                  color: Color(0xffffe0b2),
                  imagePath:
                      'https://tinycode.hk/wp-content/uploads/2015/01/java-logo-png-300x300.png',
                  languageName: 'Java',
                ),
                HomeCard(
                  onTap: () {},
                  color: Color(0xfff8bbd0),
                  imagePath:
                      'https://th.bing.com/th/id/R.aa569c82139d41b19c244f4d2e06b94e?rik=FvQWAjQHCUv1MA&riu=http%3a%2f%2fwww.rogerperkin.co.uk%2fwp-content%2fuploads%2f2016%2f12%2fpython-transparent-logo.png&ehk=zxvV5Wq0Lgk366aS67nZa9JluZQTp9INPdskmLCX54c%3d&risl=&pid=ImgRaw',
                  languageName: 'Python',
                ),
                HomeCard(
                  onTap: () {},
                  color: Color(0xffc8e6c9),
                  imagePath:
                      'https://dwglogo.com/wp-content/uploads/2018/03/Dart_bird_logo.png',
                  languageName: 'Flutter/Dart',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/**
 * 
 */
