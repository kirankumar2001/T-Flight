import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/presentation/account/widget/account_settings.dart';

import '../../core/colors.dart';
import '../../core/sized.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 750,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/maps.jpg'), fit: BoxFit.cover),
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
                  left: 100,
                  top: 40,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: grey,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/person3.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      Text(
                        "User@gmail.com",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold,
                          color: white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                left: 30,
                top: 200,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 300,
                    height: 520,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(15)),
                    child: ProfileList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
