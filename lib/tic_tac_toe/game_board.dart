import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Player"),
            Text("Player"),
          ],
        ),
        SizedBox(height: 30),
        Expanded(
          child: GridView.builder(
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 6.0,
              mainAxisSpacing: 6.0,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              );
            },
          ),
        ),
        // SizedBox(height: 5),
        Text("Player Wins"),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          onPressed: () {},
          child: Text('Restart'),
        ),
      ],
    );
  }
}
