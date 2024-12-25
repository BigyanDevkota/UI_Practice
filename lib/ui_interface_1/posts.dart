import 'package:flutter/material.dart';
import 'package:ui_practice/ui_interface_1/single_post.dart';

class MyPosts extends StatelessWidget {
  const MyPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 350.0),
      child: Column(
        children: [
          SinglePost(),
          SinglePost(),
          

        ],
      ),
    );
  }
}
