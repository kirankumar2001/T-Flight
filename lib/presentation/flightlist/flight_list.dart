import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:t_flight/presentation/flightlist/widget/flight_list_container.dart';

import '../../core/colors.dart';
import '../../core/sized.dart';

class FlightListPage extends StatefulWidget {
  const FlightListPage({super.key});

  @override
  State<FlightListPage> createState() => _FlightListPageState();
}

class _FlightListPageState extends State<FlightListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                  width: double.infinity,
                  height: 300,
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
                          left: 30,
                          top: 60,
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: green2,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                              cursorColor: black,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    BoxIcons.bx_search,
                                    color: black,
                                  ),
                                  hintText: 'Search...',
                                  hintStyle: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.bold,
                                    color: black,
                                    fontSize: 15,
                                  )),
                            ),
                          )),
                      Positioned(
                        left: 30,
                        top: 150,
                        child: FlightListContainer(),
                      )
                    ],
                  )),
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
              FlightListContainer(),
              sizedh30,
            ])));
  }
}
