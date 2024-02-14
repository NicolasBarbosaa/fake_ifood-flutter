import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ifood/Screens/CustomWidgets/Style.dart';

//lista de icones

Widget listTile(
  IconData iconLeading, 
  String title,
  String subtitle ){
  return ListTile(
    onTap:(){},
    leading: Icon(iconLeading),
    title: Text(title, style: textNunitoBold(16),),
    subtitle: Text(subtitle, style: textNunito300(14),),
    trailing: const Icon(Icons.arrow_right),
  );
}