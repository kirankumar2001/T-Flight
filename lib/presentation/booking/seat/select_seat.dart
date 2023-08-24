import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/presentation/booking/seat/ticket.dart';
import 'package:t_flight/presentation/booking/seat/widget/seat_container.dart';

import '../../../core/colors.dart';
import '../../../core/sized.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  var isLoading = true;
  bool isSelected = true;
  var add = [];
  int? selectedIndex;
  int price = 1500;
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
                  height: 850,
                  child: Stack(children: [
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
                      left: 30,
                      top: 60,
                      child: Text(
                        "Select Your Seats",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold,
                          color: white,
                          fontSize: 32,
                        ),
                      ),
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
                      child: SeatContainer(
                        price: price.toString(),
                      ),
                    ),
                    Positioned(
                      top: 370,
                      left: 30,
                      child: Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: black)),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2,
                          ),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, right: 20),
                              child: Material(
                                elevation: 7,
                                borderRadius: BorderRadius.circular(15),
                                child: InkWell(
                                  onTap: () {
                                    print(add.length);
                                    setState(() {
                                      if (isSelected) {
                                        add.clear();
                                      } else {
                                        add.removeAt(index);
                                        //price / add.length;
                                        // add.remove(index);
                                      }
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 1.1),
                                      borderRadius: BorderRadius.circular(15),
                                      color: selectedIndex == index
                                          ? green1
                                          : white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '${index + 1}',
                                      style: GoogleFonts.ptSans(
                                        fontWeight: FontWeight.bold,
                                        color: black,
                                        fontSize: 20,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 800,
                      left: 30,
                      child: SizedBox(
                          width: 300,
                          height: 45,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(green1)),
                              onPressed: () {
                                setState(() {
                                  Timer(Duration(seconds: 2), () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                TicketPage()));
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
                                      'Confirm',
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
                    )
                  ])),
            ])));
  }

  bottomSheetTicket() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          body: Container(
            width: 300,
            height: 800,
            color: green1,
          ),
        );
      },
    );
  }
}
