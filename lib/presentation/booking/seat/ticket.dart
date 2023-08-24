import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/core/colors.dart';
import 'package:t_flight/core/sized.dart';
import 'package:t_flight/presentation/booking/seat/widget/container_purpose.dart';
import 'package:t_flight/presentation/booking/seat/widget/containerdate.dart';
import 'package:t_flight/presentation/home/home_page.dart';

class TicketPage extends StatefulWidget {
  TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  var seat = ['Gate', 'Seat', 'Flight No', 'Class'];

  var seatitem = ['C1', 'A1', 'ZADC', 'Bussines'];

  var isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Card(
          color: white,
          child: Container(
            width: 300,
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/flightticket.png',
                    height: 60,
                  ),
                ),
                Text(
                  "American Airlines Flight MLI-18",
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                sizedh10,
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 4,
                        child: Flex(
                          direction: Axis.horizontal,
                          children: List.generate(
                              50,
                              (index) => Text(
                                    '-',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: grey),
                                  )),
                        ),
                      ),
                      Positioned(
                          left: -15,
                          bottom: 1,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: white),
                          )),
                      Positioned(
                          right: -15,
                          bottom: 1,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: white),
                          ))
                    ],
                  ),
                ),
                sizedh30,
                ContainerRow(),
                sizedh30,
                ContainerDate(),
                sizedh30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      4,
                      (index) => Text(
                            seat[index],
                            style: GoogleFonts.ptSans(
                              color: grey1,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      4,
                      (index) => Text(
                            seatitem[index],
                            style: GoogleFonts.ptSans(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )),
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: List.generate(
                      50,
                      (index) => Text(
                            '-',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: grey),
                          )),
                ),
                sizedh30,
                Image.asset(
                  'assets/barcode.webp',
                  width: 250,
                ),
                SizedBox(
                    width: 280,
                    height: 45,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor: MaterialStatePropertyAll(green1)),
                        onPressed: () {
                          setState(() {
                            Timer(Duration(seconds: 2), () async {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => HomePage()));
                            });
                            if (isLoading) {
                              isLoading = false;
                            } else {
                              isLoading = true;
                            }
                          });
                        },
                        child: isLoading
                            ? Text(
                                'Download',
                                style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                  fontSize: 16,
                                ),
                              )
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Downloading.......',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  sizedw10,
                                  SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircularProgressIndicator(
                                      color: white,
                                    ),
                                  ),
                                ],
                              ))),
              ],
            ),
            //color: green1,
          ),
        ),
      ),
    );
  }
}
