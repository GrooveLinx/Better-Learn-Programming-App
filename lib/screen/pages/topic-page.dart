import 'package:code_quiz_v2/widgets/language_card.dart';
import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffee),
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            height: MediaQuery.of(context).size.height * .3,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                    child: Text(
                      'Learn Programming &\nTest Your Coding Skills!',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  crossAxisCount: 2,
                  childAspectRatio:
                      MediaQuery.of(context).size.aspectRatio * 1.4,
                  children: [
                    HomeCard(
                      onTap: () {},
                      color: Color(0xfffdf5e6),
                      imagePath:
                          'https://cdn.freebiesupply.com/logos/thumbs/2x/c-2975-logo.png',
                      languageName: 'C/C++',
                    ),
                    HomeCard(
                      onTap: () {},
                      color: Color(0xfff8f5e9),
                      imagePath:
                          'https://tinycode.hk/wp-content/uploads/2015/01/java-logo-png-300x300.png',
                      languageName: 'Java',
                    ),
                    HomeCard(
                      onTap: () {},
                      color: Color(0xffefecde),
                      imagePath:
                          'https://th.bing.com/th/id/R.aa569c82139d41b19c244f4d2e06b94e?rik=FvQWAjQHCUv1MA&riu=http%3a%2f%2fwww.rogerperkin.co.uk%2fwp-content%2fuploads%2f2016%2f12%2fpython-transparent-logo.png&ehk=zxvV5Wq0Lgk366aS67nZa9JluZQTp9INPdskmLCX54c%3d&risl=&pid=ImgRaw',
                      languageName: 'Python',
                    ),
                    HomeCard(
                      onTap: () {},
                      color: Color(0xffe9e4ef),
                      imagePath:
                          'https://dwglogo.com/wp-content/uploads/2018/03/Dart_bird_logo.png',
                      languageName: 'Flutter/Dart',
                    ),
                    HomeCard(
                      onTap: () {},
                      color: Color(0xfffbeee8),
                      imagePath:
                          'https://marcas-logos.net/wp-content/uploads/2020/11/JavaScript-logo.png',
                      languageName: 'JavaScript',
                    ),
                    HomeCard(
                      onTap: () {},
                      color: Color(0xffebf5f0),
                      imagePath:
                          'https://msysgit.github.io/img/gwindows_logo.png',
                      languageName: 'Git',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

/**
 * 
 */
