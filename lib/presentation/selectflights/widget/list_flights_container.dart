import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/core/sized.dart';
import 'package:t_flight/presentation/flightlist/flight_list.dart';

import '../../../core/colors.dart';

class FlightPurposeContainer extends StatelessWidget {
  const FlightPurposeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => FlightListPage()));
          },
          child: Container(
              width: 300,
              height: 120,
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Vacation in Maldives',
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold,
                          color: black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    sizedh10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'CHLD',
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
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
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }
}
