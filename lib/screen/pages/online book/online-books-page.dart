import 'package:auto_size_text/auto_size_text.dart';
import 'package:code_quiz_v2/provider/online%20books/online-books-provider.dart';
import 'package:code_quiz_v2/screen/pages/online%20book/book-details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      backgroundColor: Color(0xffece4dc),
      appBar: AppBar(
        backgroundColor: Color(0xffece4dc),
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
                builder: (context, bookObject, _) => Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: AutoSizeText(
                                'Get Essential\nBooks!',
                                maxLines: 2,
                                minFontSize: 24,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              'images/analysis.svg',
                              fit: BoxFit.contain,
                              height: 150,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffe5ccbd),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: ListView.builder(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          bookObject.getBooksData.books.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => BookDetails(
                                                  image: bookObject.getBooksData
                                                      .books[index].image,
                                                  title: bookObject.getBooksData
                                                      .books[index].title,
                                                  subTitle: bookObject
                                                      .getBooksData
                                                      .books[index]
                                                      .subtitle,
                                                  price: bookObject.getBooksData
                                                      .books[index].price,
                                                  url: bookObject.getBooksData
                                                      .books[index].url,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .53,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 30),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.red[200],
                                                  Colors.orange[200],
                                                ],
                                              ),
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
                                                Spacer(),
                                                Hero(
                                                  tag: bookObject.getBooksData
                                                      .books[index].image,
                                                  child: Image.network(
                                                    bookObject.getBooksData
                                                        .books[index].image
                                                        .toString(),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .50,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            .3,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  child: AutoSizeText(
                                                    bookObject.getBooksData
                                                        .books[index].title,
                                                    maxLines: 2,
                                                    minFontSize: 16,
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
