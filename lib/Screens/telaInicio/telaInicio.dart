import 'package:flutter/material.dart';
import 'package:ifood/Screens/CustomWidgets/Card.dart';
import 'package:ifood/Screens/CustomWidgets/slide.dart';

class TelaIncio extends StatefulWidget {
  const TelaIncio({super.key});

  @override
  State<TelaIncio> createState() => _TelaIncioState();
}

class _TelaIncioState extends State<TelaIncio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("R. Ari Barroso"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red,),
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              card(190, 90, Colors.grey, "Pet", "assets/pet.png"),
              card(190, 90, Colors.grey, "Mercado", "assets/mercado.png"),
            ],
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 100, Colors.deepPurple[50], "Farmácia", "assets/farmacia.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Bebidas", "assets/bebidas.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Sucos", "assets/sucos.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Pizza", "assets/pizza.png"),
                ]
                ),
          ),
              const Slide(),
        ],
      ),
    );
  }
}