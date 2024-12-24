import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeroKinmel(),
    );
  }
}

class MeroKinmel extends StatefulWidget {
  const MeroKinmel({super.key});

  @override
  State<MeroKinmel> createState() => _MeroKinmelState();
}

class _MeroKinmelState extends State<MeroKinmel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
              ),
              color: Colors.white,
            ),
            SizedBox(width: 10),
            // column for branch
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mero Kinmel',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Chitwan',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          // fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  width: double.infinity,
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),

                // row of categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.dinner_dining,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Non-Veg\n Restaurants",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.grass,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Veg\nRestaurants",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.bakery_dining_rounded,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Bakeries",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.rice_bowl_rounded,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Vegan\nRestaurants",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Icon(
                                Icons.liquor_rounded,
                                size: 55,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Liquors",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 6,
                  color: const Color.fromARGB(255, 158, 196, 228),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
