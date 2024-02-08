import 'package:flutter/material.dart';
import 'package:ifood/Screens/CustomWidgets/menuInferior.dart';
import 'package:ifood/Screens/Profile/profileScreen.dart';

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
  Text('Home'),
  Text('Busca'),
  Text('Pedidos'),
  ProfileScreen(),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:telas.elementAt(itemSelecionado) ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: itemSelecionado,
        onTap: nextStation,
        selectedItemColor:  Colors.black,
        unselectedItemColor:Colors.black,
        items: [
          menuInferior(Icons.home, 'home'),
          menuInferior(Icons.search, 'Busca'),
          menuInferior(Icons.shopping_cart, 'Pedidos'),
          menuInferior(Icons.person, 'Perfil'),
        ],
      ),
    );
  }
}


