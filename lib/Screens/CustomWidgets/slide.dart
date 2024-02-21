import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0];
  int qtdPaginas = 3;
  int paginaAtual =  0;

//metodo que é chamado antes da pagina ser construída para o efeito 
//acontecer logo de carregada
@override
void initState(){
  super.initState();
  nextPage();
}

//metodo para mudar de pagina periodicamente
  nextPage(){
    Timer.periodic(const Duration(seconds: 3), (timer) {
      int page = pageController.page!.round();
      setState(() {
        paginaAtual = page;
      });

      if(page >= 3){
        pageController.animateToPage(0, duration: const Duration(seconds: 2), curve: Curves.easeInCubic);
      } else{
        pageController.nextPage(duration: const Duration(seconds: 2), curve: Curves.ease);
      }
     
     });
  }

//iniciar o progresso
  void iniciarProgresso(){
      Timer.periodic(const Duration(milliseconds: 50), (timer) {
          setState(() {
            if(progresso[paginaAtual] <1){
              progresso[paginaAtual] += 0.02;
            }else{
              timer.cancel();
            }
          });
       });
  }

//metodo para resetar a animação
void reset(){
  for(int i=0; i < qtdPaginas; i++){
    progresso[i]=0.0;
  }
  iniciarProgresso();
}

//metodo para criar um indicator
List<Widget> buildIndicator(){
  List<Widget> lista = [];
  for(int i=0; i < qtdPaginas; i++ ){
   lista.add(Container(
    width: 50,
    height: 5,
    margin: const EdgeInsets.all(8),
    child: LinearProgressIndicator(
      borderRadius: BorderRadius.circular(8),
      value: progresso[i],
      backgroundColor: Colors.grey[200],
      valueColor: AlwaysStoppedAnimation<Color>(paginaAtual == i? Colors.blue : Colors.grey),
    ),
   ));
    
    }     
    
    return lista;             
}

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
           PageView(
        controller: pageController,
        children:[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.orange,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.pink,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.cyan,
          ),

        ]
      ),
        ],)
    );
  }
}