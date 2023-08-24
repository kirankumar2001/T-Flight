import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/core/colors.dart';
import 'package:t_flight/core/sized.dart';
import 'package:t_flight/presentation/home/widget/container_flight.dart';
import 'package:t_flight/presentation/home/widget/containtab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
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
                      top: 40,
                      child: Row(
                        children: [
                          Text(
                            "Let's Book Your \nFlight",
                            style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.bold,
                              color: white,
                              fontSize: 32,
                            ),
                          ),
                          sizedw50,
                          CircleAvatar(
                            backgroundColor: grey2,
                            backgroundImage: AssetImage('assets/person3.jpg'),
                          )
                        ],
                      )),
                  Positioned(
                    left: 30,
                    top: 130,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15)),
                        child: ContainerTab(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ContainerFlight(flight: 'Fly Emirates', code: 'HJB-JKM'),
            sizedh20,
            ContainerFlight(flight: 'Fly Emirates', code: 'HJB-JKM'),
            sizedh20,
            ContainerFlight(flight: 'Fly Emirates', code: 'HJB-JKM'),
            sizedh20,
            ContainerFlight(flight: 'Fly Emirates', code: 'HJB-JKM'),
          ],
        ),
      ),
    );
  }
}
