import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/presentation/flightlist/flight_list.dart';
import 'package:t_flight/presentation/selectflights/select_flight_purpose.dart';

import '../../../core/colors.dart';
import '../../../core/sized.dart';

class ContainerFlight extends StatelessWidget {
  String flight;
  String code;
  ContainerFlight({super.key, required this.flight, required this.code});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      elevation: 7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: grey1,
        ),
        height: 340,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizedh5,
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/delta.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255, 210, 64),
              ),
              height: 200,
              width: 280,
            ),
            sizedh15,
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 10),
              child: Row(
                children: [
                  Text(
                    flight,
                    // 'Fly Emirates',
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      color: black,
                      fontSize: 18,
                    ),
                  ),
                  sizedw120,
                  Text(
                    code,
                    // 'HJB-JKM',
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      color: grey1,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 250, child: Divider()),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.schedule,
                    size: 20,
                    color: green1,
                  ),
                  Text(
                    '10.00 PM - 9.00 AM',
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      color: grey1,
                      fontSize: 10,
                    ),
                  ),
                  sizedw80,
                  TextButton(
                    style: ButtonStyle(
                        surfaceTintColor: MaterialStatePropertyAll(buttonbg1)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => SelectFlightPurpose()));
                    },
                    child: Text(
                      'Book Now >',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: buttonbg,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
