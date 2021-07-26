import 'package:code_quiz_v2/screen/pages/online%20book/online-books-page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetails extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final String url;
  BookDetails(
      {Key key, this.image, this.title, this.subTitle, this.price, this.url})
      : super(key: key);

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.brown[200],
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.cyan[50],
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (_) => OnlineBookPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: MediaQuery.of(context).size.height * .8,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red[200],
                    Colors.orange[200],
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
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
                    tag: widget.image,
                    child: Image.network(widget.image),
                  ),
                  Spacer(),
                  Text(
                    '${widget.title}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${widget.subTitle}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.link,
                          size: 40,
                          color: Colors.blueGrey,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        '${widget.price}',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
