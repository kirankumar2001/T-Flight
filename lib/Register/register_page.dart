import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:m_toast/m_toast.dart';
import 'package:t_flight/presentation/splash/splashscreen.dart';

import '../presentation/Login/login_page.dart';
import '../core/colors.dart';
import '../core/sized.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //final UserController _userController = Get.put(UserController());
  TextEditingController _email = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _pass1 = TextEditingController();
  TextEditingController _pass2 = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  bool visibility = true;
  bool visibility2 = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    visibility = true;
    visibility2 = true;
  }

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
                    Text("Signup",
                        style: GoogleFonts.ptSans(
                            color: text1color,
                            fontSize: 45,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 70,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
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
                          controller: _username,
                          decoration: InputDecoration(
                              hintText: "User Name",
                              filled: true,
                              fillColor: bg,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter User Name';
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
                          controller: _pass1,
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
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 70,
                        child: TextFormField(
                          controller: _pass2,
                          obscureText: visibility2 ? true : false,
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
                              suffixIcon: IconButton(
                                icon: visibility2
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    if (visibility2) {
                                      visibility2 = false;
                                    } else {
                                      visibility2 = true;
                                    }
                                  });
                                },
                              ),
                              filled: true,
                              fillColor: bg,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Check Your Password is Correct';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    sizedh25,
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
                            String passw = _pass2.text.trim();
                            String user = _username.text.trim();
                            if (_globalKey.currentState!.validate()) {
                              if (_pass2.text == _pass1.text) {
                                if (_email.text != '' && _pass1.text != '') {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              SplashScreen()));
                                  // FireHelpers()
                                  //     .signUp(email: email, password: passw)
                                  //     .then((result) {
                                  //   if (result == null) {
                                  //     _userController.createUser(
                                  //         email, '', passw, user);
                                  //     Navigator.of(context).pushReplacement(
                                  //         MaterialPageRoute(
                                  //             builder: (builder) =>
                                  //                 SuccessSplash()));
                                  //   }
                                  // });
                                } else {
                                  return null;
                                }
                              } else {
                                _incorrectPass();
                              }
                            } else {
                              _checkEmailSnack();
                            }
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 20,
                                color: text1color,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    sizedh10,
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => LoginScreen()));
                      },
                      child: Text("Do you have already an account ?",
                          style: GoogleFonts.ptSans(
                              color: textcolor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    sizedh30,
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
                              onPressed: () {},
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
                                //FireHelpers().googleSign(context);
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => SplashScreen()));
                              },
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

  _checkEmailSnack() {
    ShowMToast toast = ShowMToast();
    toast.errorToast(context,
        message: 'Check Your Email and Password Field',
        alignment: Alignment.bottomCenter);
  }

  void _incorrectPass() {
    ShowMToast toast = ShowMToast();
    toast.errorToast(context,
        message: 'Password is Incorrect', alignment: Alignment.bottomCenter);
  }
}
