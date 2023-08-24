import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:t_flight/core/sized.dart';
import 'package:t_flight/presentation/booking/seat/select_seat.dart';
import 'package:t_flight/presentation/booking/widgets/count_button.dart';
import 'package:t_flight/presentation/booking/widgets/title_booking.dart';

import '../../core/colors.dart';
import '../selectflights/widget/list_flights_container.dart';

class TicketBooking extends StatefulWidget {
  const TicketBooking({super.key});

  @override
  State<TicketBooking> createState() => _TicketBookingState();
}

class _TicketBookingState extends State<TicketBooking> {
  int selectedIndex = 0;
  var cabin = ['Economy', 'Bussiness', 'First Class'];
  int adults = 0;
  int childrens = 0;
  int infants = 0;
  var isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex == true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                width: double.infinity,
                height: 400,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('assets/maps.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.tealAccent,
                      ),
                      child: Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Colors.black26,
                                  Colors.black12
                                ]),
                          )),
                    ),
                    Positioned(
                      top: 200,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 230,
                      child: FlightPurposeContainer(),
                    ),
                    Positioned(
                      left: 30,
                      top: 60,
                      child: Text(
                        "Book Flight",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold,
                          color: white,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ],
                )),
            TitleBooking(title1: 'Departure', title2: 'Adults'),
            sizedh10,
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
              ),
              child: SizedBox(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 120,
                      decoration: BoxDecoration(
                          color: grey2,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.date_range,
                            color: buttonbg,
                          ),
                          Text(
                            '14 Sept,2023',
                            style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.bold,
                              color: black,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    sizedw40,
                    sizedw5,
                    CountButton(
                      add: () {
                        setState(() {
                          adults++;
                        });
                      },
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.accessibility_new),
                          Text(
                            "${adults}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      minus: () {
                        setState(() {
                          adults--;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            sizedh20,
            TitleBooking(title1: 'Children', title2: 'Infants'),
            sizedh10,
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  CountButton(
                      add: () {
                        setState(() {
                          childrens++;
                        });
                      },
                      minus: () {
                        setState(() {
                          childrens--;
                        });
                      },
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.accessibility_new),
                          Text(
                            "${childrens}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  sizedw40,
                  CountButton(
                      add: () {
                        setState(() {
                          infants++;
                        });
                      },
                      minus: () {
                        setState(() {
                          infants--;
                        });
                      },
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.accessible),
                          Text(
                            "${infants}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 10),
              child: Text(
                'Cabin',
                style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 55,
              child: ListView.builder(
                  itemCount: 3,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                              color: selectedIndex == index ? green1 : grey2,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              cabin[index],
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.bold,
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ])),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: white,
        color: white,
        shadowColor: white,
        elevation: 10,
        child: SizedBox(
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor: MaterialStatePropertyAll(green1)),
                onPressed: () {
                  setState(() {
                    Timer(Duration(seconds: 2), () async {
                      await Navigator.of(context)
                          .push(MaterialPageRoute(
                              builder: (builder) => SelectSeat()))
                          .then((value) => isLoading == true);
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
                        'BOOK',
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
                            'BOOK.......',
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
      ),
    );
  }

  // bottomSheetTicket() {
  //   showBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return Column();
  //     },
  //   );
  // }
}
