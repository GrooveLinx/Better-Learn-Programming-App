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
  List<ProgrammingTutorial> programmingTutorial;
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
      this.programmingTutorial,
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

class ProgrammingTutorial extends CategoryTopic {
  int id;
  String topic1Title;
  String topic1Description;
  String sample1Program;
  String sample1ProgramOutput;
  String program1Description;
  String topic2Title;
  String topic2Description;
  String sample2Program;
  String sample2ProgramOutput;
  String program2Description;
  String topic3Title;
  String topic3Description;
  String sample3Program;
  String sample3ProgramOutput;
  String program3Description;
  String topic4Title;
  String topic4Description;
  String sample4Program;
  String sample4ProgramOutput;
  String program4Description;
  String topic5Title;
  String topic5Description;
  String sample5Program;
  String sample5ProgramOutput;
  String program5Description;
  String topic6Title;
  String topic6Description;
  String sample6Program;
  String sample6ProgramOutput;
  String program6Description;
  String topic7Title;
  String topic7Description;
  String sample7Program;
  String sample7ProgramOutput;
  String program7Description;
  String topic8Title;
  String topic8Description;
  String sample8Program;
  String sample8ProgramOutput;
  String program8Description;
  String topic9Title;
  String topic9Description;
  String sample9Program;
  String sample9ProgramOutput;
  String program9Description;
  String topic10Title;
  String topic10Description;
  String sample10Program;
  String sample10ProgramOutput;
  String program10Description;
  String topic11Title;
  String topic11Description;
  String sample11Program;
  String sample11ProgramOutput;
  String program11Description;
  String topic12Title;
  String topic12Description;
  String sample12Program;
  String sample12ProgramOutput;
  String program12Description;
  bool isFav;
  ProgrammingTutorial(
      {this.id,
      this.topic1Title,
      this.topic1Description,
      this.sample1Program,
      this.sample1ProgramOutput,
      this.program1Description,
      this.topic2Title,
      this.topic2Description,
      this.sample2Program,
      this.sample2ProgramOutput,
      this.program2Description,
      this.topic3Title,
      this.topic3Description,
      this.sample3Program,
      this.sample3ProgramOutput,
      this.program3Description,
      this.topic4Title,
      this.topic4Description,
      this.sample4Program,
      this.sample4ProgramOutput,
      this.program4Description,
      this.topic5Title,
      this.topic5Description,
      this.sample5Program,
      this.sample5ProgramOutput,
      this.program5Description,
      this.topic6Title,
      this.topic6Description,
      this.sample6Program,
      this.sample6ProgramOutput,
      this.program6Description,
      this.topic7Title,
      this.topic7Description,
      this.sample7Program,
      this.sample7ProgramOutput,
      this.program7Description,
      this.topic8Title,
      this.topic8Description,
      this.sample8Program,
      this.sample8ProgramOutput,
      this.program8Description,
      this.topic9Title,
      this.topic9Description,
      this.sample9Program,
      this.sample9ProgramOutput,
      this.program9Description,
      this.topic10Title,
      this.topic10Description,
      this.sample10Program,
      this.sample10ProgramOutput,
      this.program10Description,
      this.topic11Title,
      this.topic11Description,
      this.sample11Program,
      this.sample11ProgramOutput,
      this.program11Description,
      this.topic12Title,
      this.topic12Description,
      this.sample12Program,
      this.sample12ProgramOutput,
      this.program12Description,
      this.isFav = false});
}
