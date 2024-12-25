import 'package:flutter/material.dart';
import 'package:ui_practice/ui_interface_1/myStyle.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 228, 228),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Profile',
            style: titleText,
          ),
          Icon(
            Icons.search,
            size: 25.0,
          )
        ],
      ),
    );
  }
}
