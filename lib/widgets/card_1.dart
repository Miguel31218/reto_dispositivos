import 'package:examples/models/spaces.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card1 extends StatelessWidget {
  Espacios identificadorEspacio;

  Card1({required this.identificadorEspacio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 130,
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(25),
        // color: Colors.red,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(5, 5),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
            ),
            Text(
              identificadorEspacio.title,
              maxLines: 2,
              style: TextStyle(
                color: const Color.fromARGB(255, 14, 96, 237),
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
