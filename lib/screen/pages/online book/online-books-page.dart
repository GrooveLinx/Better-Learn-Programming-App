import 'package:code_quiz_v2/provider/online%20books/online-books-provider.dart';
import 'package:code_quiz_v2/screen/pages/online%20book/book-details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnlineBookPage extends StatefulWidget {
  const OnlineBookPage({Key key}) : super(key: key);

  @override
  _OnlineBookPageState createState() => _OnlineBookPageState();
}

class _OnlineBookPageState extends State<OnlineBookPage> {
  BookProvider bookProvider;
  bool isLoading = true;

  @override
  void didChangeDependencies() {
    bookProvider = Provider.of<BookProvider>(context, listen: false);

    bookProvider.fetchBooksData().then(
          (_) => {
            setState(
              () {
                isLoading = false;
              },
            )
          },
        );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        elevation: 0.0,
        title: Text(
          'Online Books',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 28,
              letterSpacing: 1.1,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Consumer<BookProvider>(
                builder: (context, bookObject, _) => Center(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Flexible(
                          child: Text(
                            'Get Programming\nBooks!',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.green[900],
                                fontSize: 34,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    padding: EdgeInsets.all(15),
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        bookObject.getBooksData.books.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => BookDetails(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: 180,
                                            height: 200,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 30),
                                            decoration: BoxDecoration(
                                              color: Colors.green[50],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  spreadRadius: -3,
                                                  blurRadius: 10,
                                                  offset: Offset(1, 5),
                                                )
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Hero(
                                                  tag: bookObject.getBooksData
                                                      .books[index].image,
                                                  child: Image.network(
                                                    bookObject.getBooksData
                                                        .books[index].image
                                                        .toString(),
                                                    height: 200,
                                                    width: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  child: Flexible(
                                                    child: Text(
                                                      bookObject.getBooksData
                                                          .books[index].title,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                          color:
                                                              Colors.blue[900],
                                                          letterSpacing: 1.1,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
