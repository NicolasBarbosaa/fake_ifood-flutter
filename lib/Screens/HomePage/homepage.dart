import 'package:flutter/material.dart';
import 'package:ifood/Screens/CustomWidgets/menuInferior.dart';
import 'package:ifood/Screens/Profile/profileScreen.dart';
import 'package:ifood/Screens/busca/search_screen.dart';
import 'package:ifood/Screens/telaInicio/telaInicio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation (int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }


//lista de pagina
List<Widget> telas = const [
  TelaIncio(),
  TelaBusca(),
  Text('Pedidos'),
  ProfileScreen(),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:telas.elementAt(itemSelecionado),
         ),
         bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}


