import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ParcelBoxOffice extends StatelessWidget {
  const ParcelBoxOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(top: 18, bottom: 7),
      child: Container(
        height: 165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 17),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "NYO924",
                  style:
                      GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
                ),
                Text(
                  "Available 24/7",
                  style:
                      GoogleFonts.poppins(fontSize: 11, color: Colors.black45),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              "985 Meadow St.",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Staten Island, NY 10306",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Fully Occupied",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.5),
                child: LinearProgressIndicator(
                    value: 1,
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    backgroundColor: const Color(0xFFF8F8F8)),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
