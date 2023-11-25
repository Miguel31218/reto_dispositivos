import 'dart:ffi';

import 'package:examples/models/equipos.dart';
import 'package:examples/models/spaces.dart';
import 'package:examples/pages/device_page.dart';
import 'package:examples/pages/device_page2.dart';
import 'package:examples/widgets/card_1.dart';
import 'package:examples/widgets/card_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Espacios> typeSpaces = [
    Espacios(
      title: "A",
    ),
    Espacios(
      title: "B",
    ),
    Espacios(
      title: "C",
    ),
    Espacios(
      title: "D",
    ),
  ];

  List<Equipos> typeEquipos = [
    Equipos(
      name: "TV Cuarto",
      icono: Icons.tv,
      Fabricante: 'Televisor',
      Modelo: 'TPD-FFC',
      MAC: '40:30:20:PTR:100',
    ),
    Equipos(
      name: "Refrigeradora",
      icono: Icons.kitchen,
      Fabricante: 'Refrigeradora',
      Modelo: 'KP-IDFDF',
      MAC: '40:PT:9:344:REFRI',
    ),
    Equipos(
      name: "Puerta Sala",
      icono: Icons.door_front_door,
      Fabricante: 'Puertas Electronicas',
      Modelo: 'FR-100',
      MAC: '40:20:400:CP:40',
    ),
    Equipos(
      name: "Cochera",
      icono: Icons.garage,
      Fabricante: 'Cochera',
      Modelo: 'TP-NSSS',
      MAC: '30:40:60:FC:30:PT',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Navicury",
          style: GoogleFonts.roboto(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Espacios",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: typeSpaces.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DevicePage2(
                            dispositivos: typeEquipos[index],
                          ),
                        ),
                      );
                    },
                    child: Card1(
                      identificadorEspacio: typeSpaces[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "Equipos Conectados",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DevicePage(
                            caracteristicas: typeEquipos[index],
                          ),
                        ),
                      );
                    },
                    child: Card2(
                      some: typeEquipos[index],
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
