// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'ListComponantScreen.dart';
import 'TitleScreen.dart';
import 'dart:math' as math;

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isShowPass = false;
  var x = 36;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 33.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TitleScreen(
              title: "Mostafa St.",
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 7,
                    right: 7,
                  ),
                  padding: const EdgeInsets.all(8),
                  width: 180,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )),
                  child: Row(
                    //Gray box home
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 41,
                        height: 45,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(227, 221, 214, 214),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                      ),
                      const Column(
                        children: [
                          SizedBox(width: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Home Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Mostafa st. No.2",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Street x12",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 1,
                  ),
                  padding: const EdgeInsets.all(8),
                  width: 195,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      )),
                  child: Row(
                    //Gray box home
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 41,
                        height: 45,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(227, 221, 214, 214),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                      ),
                      const Column(
                        children: [
                          SizedBox(width: 13),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Office Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Axis Istanbul, B2 Blok",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Floor 2, Office 11",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                obscureText: isShowPass,
                decoration: InputDecoration(
                  hintText: "Search in thousands of products",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Explore by Category",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListComponantScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "See All($x)",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: 120,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt(),
                              ).withOpacity(1.0),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("Steak"),
                        ],
                      );
                    },
                  ),
                )),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Deals of the day",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 150,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 150,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(947, 87, 227, 245),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              top: -10,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                mini: true,
                                child: const Icon(
                                  (Icons.favorite_border),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            Text("Summer Sun Ice Cream Pack"),
                            SizedBox(height: 5),
                            Text("5 Pieces"),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.location_pin),
                                SizedBox(width: 5),
                                Text("15 Minutes Away"),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text.rich(TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "\$12 ",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    TextSpan(
                                      text: " \$18",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 150,
                              width: 140,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 125, 78, 78),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              top: -10,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                mini: true,
                                child: const Icon(
                                  (Icons.favorite_border),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            Text("Summer Sun Ice Cream Pack"),
                            SizedBox(height: 5),
                            Text("5 Pieces"),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.location_pin),
                                SizedBox(width: 5),
                                Text("15 Minutes Away"),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text.rich(TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "\$12 ",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    TextSpan(
                                        text: " \$18",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.lineThrough)),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 380,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255,254, 200, 189),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mega",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 25,
                              ),
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Text(
                                  "WHOPP",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Positioned(
                                  right: -38,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "E",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text: "R",
                                            style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "\$ 17",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "\$ 32",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Available until 24 December 2024",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
