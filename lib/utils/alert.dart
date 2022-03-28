import 'package:flutter/material.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

displayDialog(context, positiveText, negativeText, Function positiveFunction,
    title, subTitle) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: colors.scaffoldbackground,
      title: Text(
        title,
        style: GoogleFonts.raleway(color: colors.alertBoxTextColor, fontWeight: FontWeight.bold),
      ),
      content: Text(
        subTitle,
        style: GoogleFonts.raleway(color: colors.alertBoxTextColor),
      ),
      actions: <Widget>[
        negativeText != null
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: colors.yesbuttoncolor
          ),

          child: Text(
            negativeText,
            style: GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
            : Container(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: colors.yesbuttoncolor
          ),
          child: Text(positiveText,
              style: TextStyle(color: colors.alertBoxTextColor, fontWeight: FontWeight.bold)),
          onPressed: () async {
            positiveFunction();
          },
        ),
      ],
    ),
  );
}
