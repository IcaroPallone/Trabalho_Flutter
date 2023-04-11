// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto/repositories/games_repository.dart';
import 'package:projeto/view/games_detalhes.dart';

import '../model/games.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}


class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    final tabela = GamesRepository.tabela;

    mostrarDetalhes(Games games) {
      Navigator.push(context, MaterialPageRoute(
      builder: (_) => GamesDetalhes(games:games),),);
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Jogos'),
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
              Text(tabela[games].nome,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () => mostrarDetalhes(tabela[games]), 
                child:Image.asset(tabela[games].foto,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.40,
                fit: BoxFit.contain,
                ),
              ),
              ],
              ),
              );
                    
          },
              itemCount: tabela.length,
        ),
 
    );   
   
    
  }
}



    