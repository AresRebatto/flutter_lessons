import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children:[
          //Per ridimensionare qualcosa, usare sizedBox
          //Per mettere padding esiste Padding
          //Container ci permette di avere più caratteristiche
          for(int i = 0; i < 10; i++)
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text("Ciao a tutti"),
            ),
          //Sovappone i widget in profondità
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: 220,
              ),
              Container(
                color: Colors.yellow,
                height: 180,
                width: 200,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}