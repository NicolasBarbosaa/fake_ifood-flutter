import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//estilo roboto
TextStyle textRobotoBold(double tamanho){
  return GoogleFonts.roboto(
    fontSize: tamanho,
    fontWeight: FontWeight.bold);
}

//estilo roboto 300
TextStyle textRoboto300(double tamanho){
  return GoogleFonts.roboto(
    fontSize: tamanho,
    fontWeight: FontWeight.w300);
}

//cria um espaço lateral

Widget espacoHorizontal(double espaco){
  return SizedBox(width: espaco);
}
//cria um espaço Vertical
Widget espacoVertical(double espaco){
  return SizedBox(height: espaco);
}

//estilo nunito 300
TextStyle textNunito300(double tamanho){
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w300);
}

//estilo nunito bold
TextStyle textNunitoBold(double tamanho){
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w700);
}


TextStyle textNunitoWhiteBold(double tamanho){
  return GoogleFonts.nunitoSans(
    color: Colors.white,
    fontSize: tamanho,
    fontWeight: FontWeight.bold,
  );
}