import 'package:examples/models/equipos.dart';
import 'package:examples/models/spaces.dart';
import 'package:examples/pages/home_page.dart';
import 'package:flutter/material.dart';

class DevicePage extends StatelessWidget {
  Equipos caracteristicas;

  DevicePage({
    required this.caracteristicas,
  });

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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fabricante: ${caracteristicas.Fabricante}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Modelo: ${caracteristicas.Modelo}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "MAC: ${caracteristicas.MAC} ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Encender")))
          ],
        ),
      ),
    );
  }
}
