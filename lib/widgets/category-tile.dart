import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class CategoryTile extends StatelessWidget {
  final String dbTitle;
  final String customSubtitle;
  final Function onTap;
  const CategoryTile({Key key, this.dbTitle, this.onTap, this.customSubtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Icon(Mdi.codeJson),
              title: Text(
                dbTitle,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              subtitle: Text(
                customSubtitle,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
              trailing: GestureDetector(
                onTap: onTap,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Mdi.arrowRightBoldCircleOutline,
                    size: 30,
                    color: Colors.black54,
                  ),
                  onPressed: onTap,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
