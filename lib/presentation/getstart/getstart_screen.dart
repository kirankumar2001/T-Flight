import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/controller/imagefast.dart';
import 'package:t_flight/core/colors.dart';
import 'package:t_flight/core/sized.dart';
import 'package:t_flight/presentation/nextpage/next_page.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadImage("assets/maps.jpg", context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/maps.jpg"), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [Colors.black, Colors.black26, Colors.black12]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 10),
                child: Container(
                  width: size.width * 0.7,
                  height: size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 40),
                    child: Column(
                      children: [
                        sizedh30,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Get Start \nFor A New',
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                            sizedw10,
                            Text(
                              'Journey',
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.bold,
                                color: text1color,
                                fontSize: 32,
                              ),
                            )
                          ],
                        ),
                        sizedh20,
                        Text(
                          'Going forward after a pandamic that devastated the airline industry',
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            color: green1,
                            fontSize: 15,
                          ),
                        ),
                        sizedh30,
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              height: 50,
                              width: 150,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll(buttonbg),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) => NextPage()));
                                  },
                                  child: Text(
                                    'Get Start',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.bold,
                                      color: text1color,
                                      fontSize: 15,
                                    ),
                                  ))),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: size.height * 0.3,
                  child: Image.asset(
                    'assets/tourist.png',
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
