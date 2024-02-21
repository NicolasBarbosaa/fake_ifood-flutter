import 'package:flutter/material.dart';
import 'package:ifood/Screens/CustomWidgets/Style.dart';
import 'package:ifood/Screens/CustomWidgets/Card.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Buscar tudo no aiFood',
              border:  OutlineInputBorder(),
              contentPadding: EdgeInsets.all(4),
              prefixIcon: Icon(Icons.search, color: Colors.red,),
              filled: true,
              fillColor: Colors.grey,
            ),
          ),
        ),
        body: ListView(
          children: [
            Text('Categorias' , style: textNunitoBold(16)),
            Wrap(
              children: [
                card(185, 80, Colors.red, 'Mercado', 'assets/mercado.png'),
                card(185, 80, Colors.orange, 'Farmacia', 'assets/farmacia.png'),
                card(185, 80, const Color.fromARGB(235, 221, 140, 19), 'Bebidas', 'assets/bebidas.png'),
                card(185, 80, const Color.fromARGB(225, 1, 100, 4), 'Pet', 'assets/pet.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Acaí', 'assets/acai.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Bolo', 'assets/bolo.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Sorvete', 'assets/sorvete.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Café', 'assets/cafe.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Lanches', 'assets/lanches.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Pizza', 'assets/pizza.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Espetinho', 'assets/carnes.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Tapioca', 'assets/tapioca.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Hot Dog', 'assets/hotDog.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Marmita', 'assets/marmita.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Suco', 'assets/sucos.png'),
                card(185, 80, const Color.fromARGB(255, 111, 0, 255), 'Sopas', 'assets/sopas.png'),
                /*DadosCart.infoCards.
              map((e) => card(e["largura"], e["altura"], e["cor"], e["texto"], e["imagem"]) )
              .toList(),
              metodo alternativo para puxar uma lista de cards do documento "dados_card.dart"*/
              ],
            )
          ],
        ),
    );
  }
}

