import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors.dart';

class SeatContainer extends StatelessWidget {
  String price;
  SeatContainer({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
            onTap: () {},
            child: Container(
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Your Seats",
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 20,
                          child: Row(
                            children: [
                              Text(
                                'CHLD',
                                style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                  fontSize: 11,
                                ),
                              ),
                              Container(
                                height: 8,
                                width: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: black),
                              ),
                              Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                children: List.generate(
                                    20,
                                    (index) => Text(
                                          "-",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: grey),
                                        )),
                              ),
                              Container(
                                height: 8,
                                width: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: black),
                              ),
                              Text(
                                'DNY',
                                style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.bold,
                                  color: buttonbg,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -1,
                          left: 80,
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.flight,
                              color: grey1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      width: 195,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '10:00 AM',
                            style: GoogleFonts.ptSans(
                              color: grey1,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '10:00 AM',
                            style: GoogleFonts.ptSans(
                              color: grey1,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: green1,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Bussiness',
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.bold,
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '₹ ${price}',
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            color: black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
