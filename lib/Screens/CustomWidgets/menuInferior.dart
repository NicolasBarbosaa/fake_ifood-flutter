import 'package:flutter/material.dart';


//função que retorna um bottomNavigationBarItem

BottomNavigationBarItem menuInferior(IconData icon, String texto) {
  return BottomNavigationBarItem(
      icon: Icon(
    icon,
    color: Colors.black,
  ),
  label: texto,
  );
}