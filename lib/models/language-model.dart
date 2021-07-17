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
