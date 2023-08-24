// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleScreen extends StatelessWidget {
  TitleScreen({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 130,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(20),
              )),
          child: Row(
            children: [
              const Icon(Icons.location_on_rounded),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          //profile
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 2,
                color: Colors.black,
              )),
        )
      ],
    );
  }
}
