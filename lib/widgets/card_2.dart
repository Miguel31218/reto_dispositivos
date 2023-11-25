import 'package:examples/models/equipos.dart';
import 'package:examples/models/spaces.dart';
import 'package:examples/pages/device_page2.dart';
import 'package:examples/pages/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card2 extends StatelessWidget {
  Equipos some;

  Card2({required this.some});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 5),
                  blurRadius: 5),
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Icon(
                    some.icono,
                    color: Colors.blue.shade900,
                    size: 100,
                  ),
                ),
                Text(
                  some.name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
