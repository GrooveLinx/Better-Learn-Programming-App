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
  CategoryTopic(
      {this.id,
      this.name,
      this.imagePath,
      this.topic1,
      this.topic10,
      this.topic2,
      this.topic3,
      this.topic4,
      this.topic5,
      this.topic6,
      this.topic7,
      this.topic8,
      this.topic9});
}
