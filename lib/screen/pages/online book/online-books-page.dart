import 'package:code_quiz_v2/provider/online%20books/online-books-provider.dart';
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


    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 5.0,
        title: Text(
          'Online Books',
          style: TextStyle(
              color: Colors.black,
              fontSize: 24,
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
                  child: GridView.builder(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 30,
                      crossAxisCount: 2,
                      childAspectRatio: aspectRatio / .90,
                    ),
                    itemCount: bookObject.getBooksData.books.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal[100],
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: -3,
                                    blurRadius: 10,
                                    offset: Offset(1, 5),
                                  )
                                ]),
                            child: Column(
                              children: [
                                Image.network(
                                  bookObject.getBooksData.books[index].image
                                      .toString(),
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  bookObject.getBooksData.books[index].title,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
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
              ),
            ),
    );
  }
}

