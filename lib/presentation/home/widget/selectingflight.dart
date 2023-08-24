import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/colors.dart';

class SelectFlight extends StatelessWidget {
  String from;
  String to;
  SelectFlight({super.key, required this.from, required this.to});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 210,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(20),
                    color: white),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      BoxIcons.bxs_plane_take_off,
                      color: buttonbg,
                    ),
                    title: Text(
                      from,
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: black,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      to,
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: grey1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(20),
                    color: white),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      BoxIcons.bxs_plane_land,
                      color: green1,
                    ),
                    title: Text(
                      'London,NCD',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: black,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      'To',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold,
                        color: grey1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 170,
            top: 73,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(5),
                      backgroundColor: MaterialStatePropertyAll(buttonbg1),
                      shape: MaterialStatePropertyAll(CircleBorder())),
                  onPressed: () {},
                  child: Icon(
                    Icons.swap_vert,
                    color: black,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
