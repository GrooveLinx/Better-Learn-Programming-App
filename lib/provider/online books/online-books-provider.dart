import 'dart:convert';
import 'package:code_quiz_v2/models/online-books-model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as Http;

class BookProvider extends ChangeNotifier {
  BooksData _booksData;

  BooksData get getBooksData => _booksData;

  Future fetchBooksData() async {
    final url = 'https://api.itbook.store/1.0/search/books';
    try {
      final response = await Http.get(
        Uri.parse(url),
      );
      final responseMap = jsonDecode(response.body);
      print(response.body);
      _booksData = BooksData.fromJson(responseMap);
    } catch (err) {
      throw err;
    }
    notifyListeners();
  }
}
