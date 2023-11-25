import 'package:examples/models/equipos.dart';
import 'package:examples/models/spaces.dart';
import 'package:examples/pages/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DevicePage2 extends StatefulWidget {
  Equipos dispositivos;

  DevicePage2({required this.dispositivos});

  @override
  State<DevicePage2> createState() => _DevicePage2State();
}

class _DevicePage2State extends State<DevicePage2> {
  double a = 0;
  double b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        //MOSTRAR AUTOMATICAMENTE EL BOTON DE RETRONCESO
        automaticallyImplyLeading: true,
        title: Text("Navicury"),

        //IMPLEMENTAR UN BOTON PERSONALIZADA EN EL LEADING (PUEDE SER UN BOTON PERSONALIZADO PARA HACER NAVIGATOR     //  title: Text(dispositivos.description),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(right: 20)),
            Text(
              "Ajustar",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Luz",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Slider(
                value: a,
                min: 0, // valor minimo
                max: 100, // valor maximo hasta donde va llegar
                onChanged: (num) {
                  a = num; // num es una variable local
                  setState(() {});
                },
              ),
            ),
            Text(
              "Luz",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Slider(
                value: b,
                min: 0, // valor minimo
                max: 100, // valor maximo hasta donde va llegar
                onChanged: (num) {
                  b = num; // num es una variable local
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
