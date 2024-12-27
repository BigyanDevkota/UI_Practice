import 'package:flutter/material.dart';
import 'package:ui_practice/tic_tac_toe/game_board.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: GameBoard(),
      ),
    );
  }
}
