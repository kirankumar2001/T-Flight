import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../../core/sized.dart';

class TitleBooking extends StatelessWidget {
  String title1;
  String title2;
  TitleBooking({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
      ),
      child: SizedBox(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title1,
              style: GoogleFonts.ptSans(
                fontWeight: FontWeight.bold,
                color: black,
                fontSize: 16,
              ),
            ),
            sizedw100,
            Text(
              title2,
              style: GoogleFonts.ptSans(
                fontWeight: FontWeight.bold,
                color: black,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
