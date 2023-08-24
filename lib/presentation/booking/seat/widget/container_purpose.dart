import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors.dart';
import '../../../../core/sized.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Column(
        children: [
          Text(
            'CHLD',
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.bold,
              color: buttonbg,
              fontSize: 20,
            ),
          ),
          Text(
            'Cerritos',
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.bold,
              color: grey1,
              fontSize: 11,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Icon(Icons.access_time_rounded),
          Text(
            '1h 55m',
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: 18,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Text(
            'DNY',
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.bold,
              color: Colors.teal,
              fontSize: 20,
            ),
          ),
          Text(
            'Downey',
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.bold,
              color: grey1,
              fontSize: 11,
            ),
          ),
        ],
      )
    ]);
  }
}
