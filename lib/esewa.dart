import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Interface(),
    );
  }
}

class Interface extends StatelessWidget {
  const Interface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 182, 206, 228),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 155,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 4, 233, 4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 8),
                        child: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://freesvg.org/img/smiling_face_of_a_child.png',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, left: 12),
                        child: Text('Hi, Bigyan'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.assistant),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // load money and send money section
            Positioned(
              top: 58,
              left: 8,
              right: 8,
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    // eye button icon and money
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.wallet),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NPR 999.99',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Balance'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 78),
                          CircleAvatar(
                            child: Icon(Icons.remove_red_eye_outlined),
                          ),
                          SizedBox(width: 78),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.star),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '185.43',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Reward Points'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.3,
                    ),
                    // load money and send money
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.wallet_giftcard_outlined),
                            Text(' Load\nMoney'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.wallet_giftcard_outlined),
                            Text(' Send\nMoney'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.wallet_giftcard_outlined),
                            Text('  Bank\nTransfer'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.note),
                            Text('Remittance'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
