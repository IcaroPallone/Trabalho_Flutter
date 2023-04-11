// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:projeto/view/adicionar_jogo.dart';
import 'package:projeto/view/categoria_view.dart';
import 'package:projeto/view/comentar_jogo.dart';
import 'package:projeto/view/comentarios_jogo.dart';

import 'view/principal_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogos',
      home: TelaPrincipal(),
    
    initialRoute: 't2',
    routes: {
      //'t0': (context) => TelaLogin(),
      't1': (context) => TelaPrincipal(),
      't2': (context) => AdicionarJogo(),
      't3': (context) => TelaCategoria(),
      't4': (context) => ComentarJogo(),
    },
    ), 
  );
}
