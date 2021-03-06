// To parse this JSON data, do
//
//     final booksData = booksDataFromJson(jsonString);

import 'dart:convert';

BooksData booksDataFromJson(String str) => BooksData.fromJson(json.decode(str));

String booksDataToJson(BooksData data) => json.encode(data.toJson());

class BooksData {
  BooksData({
    this.error,
    this.total,
    this.page,
    this.books,
  });

  String error;
  String total;
  String page;
  List<Book> books;

  factory BooksData.fromJson(Map<String, dynamic> json) => BooksData(
        error: json["error"],
        total: json["total"],
        page: json["page"],
        books: List<Book>.from(json["books"].map((x) => Book.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "total": total,
        "page": page,
        "books": List<dynamic>.from(books.map((x) => x.toJson())),
      };
}

class Book {
  Book({
    this.title,
    this.subtitle,
    this.isbn13,
    this.price,
    this.image,
    this.url,
  });

  String title;
  String subtitle;
  String isbn13;
  String price;
  String image;
  String url;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        title: json["title"],
        subtitle: json["subtitle"],
        isbn13: json["isbn13"],
        price: json["price"],
        image: json["image"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "isbn13": isbn13,
        "price": price,
        "image": image,
        "url": url,
      };
}
