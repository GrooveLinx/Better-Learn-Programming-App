class Language {
  int id;
  String name;
  String info;
  String imagePath;
  bool isFav;
  String description;
  Language(
      {this.id,
      this.info,
      this.name,
      this.imagePath,
      this.isFav = false,
      this.description});
}

class CategoryTopic extends Language {
  int id;
  String name;
  String imagePath;
  String topic1;
  String topic2;
  String topic3;
  String topic4;
  String topic5;
  String topic6;
  String topic7;
  String topic8;
  String topic9;
  String topic10;
  String topic11;
  String topic12;
  String topic13;
  CategoryTopic(
      {this.id,
      this.name,
      this.imagePath,
      this.topic1,
      this.topic2,
      this.topic3,
      this.topic4,
      this.topic5,
      this.topic6,
      this.topic7,
      this.topic8,
      this.topic9,
      this.topic10,
      this.topic11,
      this.topic12,
      this.topic13});
}

class ProgrammingTutorial {
  int id;
  String topic1Title;
  String topic1Description;
  String sample1Program;
  String program1Description;
  String topic2Title;
  String topic2Description;
  String sample2Program;
  String program2Description;
  String topic3Title;
  String topic3Description;
  String sample3Program;
  String program3Description;
  String topic4Title;
  String topic4Description;
  String sample4Program;
  String program4Description;
  String topic5Title;
  String topic5Description;
  String sample5Program;
  String program5Description;
  bool isFav;
  ProgrammingTutorial(
      {this.id,
      this.topic1Title,
      this.topic1Description,
      this.sample1Program,
      this.program1Description,
      this.topic2Title,
      this.topic2Description,
      this.sample2Program,
      this.program2Description,
      this.topic3Title,
      this.topic3Description,
      this.sample3Program,
      this.program3Description,
      this.topic4Title,
      this.topic4Description,
      this.sample4Program,
      this.program4Description,
      this.isFav = false});
}
