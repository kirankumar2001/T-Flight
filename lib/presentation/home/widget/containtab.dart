import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:t_flight/core/colors.dart';
import 'package:t_flight/presentation/home/widget/selectingflight.dart';

class ContainerTab extends StatefulWidget {
  const ContainerTab({super.key});

  @override
  State<ContainerTab> createState() => _ContainerTabState();
}

class _ContainerTabState extends State<ContainerTab>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: white),
            width: 250,
            height: 50,
            child: TabBar(
                overlayColor: MaterialStatePropertyAll(white),
                indicator: BoxDecoration(
                    color: grey2, borderRadius: BorderRadius.circular(20)),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: grey1,
                labelStyle: GoogleFonts.ptSans(
                  fontWeight: FontWeight.bold,
                  color: buttonbg,
                  fontSize: 11,
                ),
                indicatorWeight: 0.1,
                labelColor: black,
                //controller: _controller,
                tabs: [
                  Container(
                    width: 100,
                    child: Tab(
                      text: 'One Way',
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Tab(
                      text: 'Round Trip',
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Tab(
                      text: 'Multy City',
                    ),
                  )
                ]),
          ),
          Container(
            width: 250,
            height: 210,
            child: TabBarView(children: [
              SelectFlight(from: 'India,Delhi', to: 'London,NCD'),
              SelectFlight(from: 'India,Mumbai', to: 'New York'),
              SelectFlight(from: 'Dubai', to: 'America,Washington'),
            ]),
          )
        ],
      ),
    );
  }
}
