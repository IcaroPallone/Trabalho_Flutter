// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto/repositories/games_repository.dart';
import 'package:projeto/view/games_detalhes.dart';

import '../model/games.dart';

class TelaCategoria3 extends StatefulWidget {
  const TelaCategoria3({super.key});

  @override
  State<TelaCategoria3> createState() => _TelaCategoria3State();
}
List<Games> category = [];
class _TelaCategoria3State extends State<TelaCategoria3> {
  @override
  Widget build(BuildContext context) {
    final tabela = GamesRepository.tabela;
    

    mostrarDetalhes(Games games) {
      Navigator.push(context, MaterialPageRoute(
      builder: (_) => GamesDetalhes(games:games),),);
    }
    category.clear();
    for (var i = 0; i < tabela.length; i++) {
      if(tabela[i].categoria == 'Corrida'){
        category.add(Games(nome: tabela[i].nome, foto: tabela[i].foto, categoria: tabela[i].categoria, plataforma: tabela[i].plataforma, sobre: tabela[i].sobre,));            
      }
     }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Corrida'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 95, 95),
      ),
      body:       
        ListView.builder(
          itemBuilder: (BuildContext context, int games){            
             return Padding(
              padding: EdgeInsets.all(20),
              child: Column(
              children: [ 
              Text(
                category[games].nome,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () => mostrarDetalhes(category[games]), 
                child:Image.asset(category[games].foto,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.40,
                fit: BoxFit.contain,
                ),
              ),
              ],
              ),
              );           
          },
            itemCount: category.length,
        ),
 
    ); 
  }
}