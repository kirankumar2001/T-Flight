import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:m_toast/m_toast.dart';

import '../../Register/register_page.dart';
import '../../core/colors.dart';
import '../../core/sized.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/maps.jpg'))),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.black12])),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Form(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sizedh70,
                    Text("Login",
                        style: GoogleFonts.ptSans(
                            color: text1color,
                            fontSize: 45,
                            fontWeight: FontWeight.bold)),
                    sizedh40,
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 70,
                        child: TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                              hintText: "Enter Your Email",
                              filled: true,
                              fillColor: bg,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !value.contains('@gmail.com')) {
                              return 'Enter Correct Format of Email';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 70,
                        child: TextFormField(
                          controller: pass,
                          obscureText: visibility ? true : false,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: visibility
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    if (visibility) {
                                      visibility = false;
                                    } else {
                                      visibility = true;
                                    }
                                  });
                                },
                              ),
                              hintText: "Password",
                              filled: true,
                              fillColor: bg,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 6) {
                              return 'Please Enter Strong Password';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    sizedh60,
                    SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              backgroundColor:
                                  MaterialStatePropertyAll(buttonbg)),
                          onPressed: () {
                            String email = _email.text.trim();
                            String password = pass.text.trim();
                            if (_globalKey.currentState!.validate()) {
                              if (_email.text != '' || pass.text != '') {
                                // FireHelpers()
                                //     .logIn(email: email, password: password)
                                //     .then((value) {
                                //   if (value == null) {
                                //     Navigator.of(context).pushReplacement(
                                //         MaterialPageRoute(
                                //             builder: (builder) =>
                                //                 SuccessSplash()));
                                //   }
                                // });
                              } else {
                                return _checkFieldSnack();
                              }
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                color: text1color,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    sizedh10,
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (builder) => SignUp()));
                      },
                      child: Text("Do you want to create an account?",
                          style: GoogleFonts.ptSans(
                              color: textcolor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    sizedh70,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(bg)),
                              onPressed: () {
                                // FireHelpers()
                                //     .signInWithFacebook()
                                //     .then((value) {
                                //   if (value == null) {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (builder) =>
                                //                 SuccessSplash()));
                                //   } else {
                                //     ShowMToast().errorToast(context,
                                //         message: '$value',
                                //         alignment: Alignment.bottomCenter);
                                //   }
                                // });
                              },
                              child: FaIcon(
                                FontAwesomeIcons.facebookF,
                                color: text1color,
                                size: 15,
                              )),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(bg)),
                              onPressed: () {
                                // FireHelpers().googleSign(context);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: text1color,
                                size: 15,
                              )),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(bg)),
                              onPressed: () {},
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: text1color,
                                size: 15,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _checkFieldSnack() {
    ShowMToast toast = ShowMToast();
    toast.errorToast(context,
        message: 'Check Your Email and Password Field',
        alignment: Alignment.bottomCenter);
  }
}
