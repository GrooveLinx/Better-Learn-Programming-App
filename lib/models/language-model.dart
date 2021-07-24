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
  String topicTitle;
  String topicDescription;
  String sampleProgram;
  String sampleProgramOutput;
  String programDescription;
  bool isFav;

  ProgrammingTutorial(
      {this.id,
      this.topicTitle,
      this.topicDescription,
      this.sampleProgram,
      this.sampleProgramOutput,
      this.programDescription,
      this.isFav = false});
}
