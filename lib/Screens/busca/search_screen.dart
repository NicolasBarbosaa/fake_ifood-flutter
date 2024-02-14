import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.all(8),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Buscar em todo aiFood',
              border: OutlineInputBorder()
            ),
          ),
        ),
    ));
  }
}

