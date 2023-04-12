// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:projeto/view/adicionar_jogo.dart';
import 'package:projeto/view/categoria_view.dart';
import 'package:projeto/view/categoria_view2.dart';
import 'package:projeto/view/categoria_view3.dart';
import 'package:projeto/view/categoria_view4.dart';
import 'package:projeto/view/comentar_jogo.dart';

import 'view/principal_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogos',
      home: TelaPrincipal(),
    
    initialRoute: 't1',
    routes: {
      //'t0': (context) => TelaLogin(),
      't1': (context) => TelaPrincipal(),
      't2': (context) => AdicionarJogo(),
      't3': (context) => TelaCategoria(),
      't4': (context) => ComentarJogo(),
      't5': (context) => TelaCategoria2(),
      't6': (context) => TelaCategoria3(),
      't7': (context) => TelaCategoria4(),
    },
    ), 
  );
}
