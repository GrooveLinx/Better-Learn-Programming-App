import 'package:code_quiz_v2/models/language-model.dart';
import 'package:code_quiz_v2/screen/programming_language_study.dart';
import 'package:code_quiz_v2/widgets/language_card.dart';
import 'package:flutter/material.dart';

class LanguageGrid extends StatelessWidget {
  final Language languageData;
  const LanguageGrid({Key key, this.languageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopicsCard(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ProgrammingLanguageStudy(
              id: languageData.id,
            ),
          ),
        );
      },
      heroTag: languageData.imagePath,
      imagePath: languageData.imagePath,
      languageName: languageData.name,
    );
  }
}
