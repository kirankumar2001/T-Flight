import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_flight/presentation/Login/login_page.dart';
import 'package:t_flight/Register/register_page.dart';
import 'package:t_flight/core/sized.dart';

import '../../core/colors.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [Colors.black, Colors.black26, Colors.black12]),
            image: DecorationImage(
                image: AssetImage('assets/maps.jpg'), fit: BoxFit.cover)),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [Colors.black, Colors.black26, Colors.black12]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(buttonbg),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => SignUp()));
                        },
                        child: Text(
                          'Create An Account',
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            color: text1color,
                            fontSize: 15,
                          ),
                        ))),
                sizedh25,
                SizedBox(
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(text1color),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => LoginScreen()));
                        },
                        child: Text(
                          'Already Have An Account!',
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            color: buttonbg,
                            fontSize: 15,
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
