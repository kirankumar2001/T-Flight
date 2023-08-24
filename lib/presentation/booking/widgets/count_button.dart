import 'package:flutter/material.dart';
import 'package:t_flight/core/colors.dart';

class CountButton extends StatelessWidget {
  Function() add;
  Function() minus;
  Widget icon;
  CountButton(
      {super.key, required this.add, required this.minus, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      decoration:
          BoxDecoration(color: grey2, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: minus,
            child: Material(
              elevation: 5,
              shape: CircleBorder(),
              color: green1,
              child: Container(
                height: 30,
                width: 30,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: green1),
                child: Center(
                  child: Icon(Icons.remove),
                ),
              ),
            ),
          ),
          icon,
          InkWell(
            onTap: add,
            child: Material(
              elevation: 5,
              shape: CircleBorder(),
              color: green1,
              child: Container(
                height: 30,
                width: 30,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: buttonbg1),
                child: Center(
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
