import 'package:flutter/material.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
          height: 150,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            child: Image.network(
              "https://stock.adobe.com/search?k=%22purple+wallpaper%22",
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(left: 70),
          child: const Row(
            children: [
              Text(
                'Latest News and Update',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
