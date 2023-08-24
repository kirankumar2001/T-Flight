import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/presentation/booking/booking_page.dart';

import '../../../core/colors.dart';
import '../../../core/sized.dart';

class FlightListContainer extends StatelessWidget {
  const FlightListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => TicketBooking()));
      },
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 300,
          height: 120,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.asset('assets/Emirates-Logo.png'),
                ),
                sizedw25,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Departure',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: grey1,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      '8:00 AM',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ),
                    sizedh10,
                    Text(
                      'Estimate',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: grey1,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      '9:00 AM',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                sizedw25,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Arrive',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: grey1,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      '2:00 PM',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ),
                    sizedh10,
                    Text(
                      'Price',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: grey1,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      '₹1500',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: buttonbg,
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
