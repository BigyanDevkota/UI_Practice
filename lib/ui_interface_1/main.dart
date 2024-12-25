import 'package:flutter/material.dart';
import 'package:ui_practice/ui_interface_1/myStyle.dart';
import 'package:ui_practice/ui_interface_1/posts.dart';
import 'package:ui_practice/ui_interface_1/profile.dart';
import 'package:ui_practice/ui_interface_1/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: mainColor,
          body: ListView(
            children: [
              Stack(
                children: [
                  MyPosts(),
                  Profile(),
                  MyAppBar(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
