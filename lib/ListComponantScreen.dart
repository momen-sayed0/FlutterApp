// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'ProductItem.dart';
import 'TitleScreen.dart';

class ListComponantScreen extends StatelessWidget {
  const ListComponantScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            TitleScreen(
              title: "Oxford Street",
            ),
            const SizedBox(height: 30),
            const Text(
              "Cart",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Expanded(
                child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const ProductItem();
              },
            ))
          ],
        ),
      ),
    );
  }
}
