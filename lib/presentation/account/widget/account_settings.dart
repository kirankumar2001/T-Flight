import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/colors.dart';
import '../../../core/sized.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Buttons(
              title: 'My Orders',
              icon: Icon(
                FontAwesomeIcons.bars,
                size: 25,
                color: text1color,
              ),
              onPress: () {}),
          Dividers(),
          Buttons(
              title: 'My Cart',
              icon: Icon(
                BoxIcons.bx_cart,
                size: 30,
                color: text1color,
              ),
              onPress: () {}),
          Dividers(),
          Buttons(
              title: 'Notification Settings',
              icon: Icon(
                BoxIcons.bx_notification,
                size: 30,
                color: text1color,
              ),
              onPress: () {}),
          Dividers(),
          Buttons(
              title: 'My Address',
              icon: Icon(
                EvaIcons.at_outline,
                size: 30,
                color: text1color,
              ),
              onPress: () {}),
          Dividers(),
          Buttons(
              title: 'Purchase History',
              icon: Icon(
                BoxIcons.bx_history,
                size: 30,
                color: text1color,
              ),
              onPress: () {}),
          Dividers(),
          Buttons(
              title: 'Logout',
              icon: Icon(
                BoxIcons.bx_log_out_circle,
                size: 30,
                color: text1color,
              ),
              onPress: () {
                _logout(context);
              }),
        ],
      ),
    );
  }

  _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text(
            'Logout',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Text('Do you want to logout this account'),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'No',
                  style: TextStyle(color: black),
                ))
          ],
        );
      },
    );
  }
}

class Buttons extends StatelessWidget {
  String title;
  Icon icon;
  Function() onPress;
  Buttons(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 80,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                sizedw30,
                icon,
                sizedw10,
                Text(
                  title,
                  style: GoogleFonts.ptSans(
                      color: black, fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 230,
      child: Divider(
        height: 0.1,
        color: grey,
      ),
    );
  }
}
