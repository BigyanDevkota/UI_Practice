import 'package:flutter/material.dart';
import 'package:ui_practice/ui_interface_1/myStyle.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 145),
      height: 325,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(),
          SizedBox(height: 10),
          Text('Rey Mysterio', style: heading),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 16.0,
                color: Colors.grey,
              ),
              Text(
                'Bharatpur',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '1234',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Posts'),
                ],
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '10M',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Followers'),
                ],
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '0',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Following'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
