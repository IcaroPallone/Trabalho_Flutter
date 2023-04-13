// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto/repositories/games_repository.dart';
import 'package:projeto/view/games_detalhes.dart';
import '../model/games.dart';

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({super.key});

  @override
  State<TelaFavoritos> createState() => _TelaFavoritosState();
}
List<Games> category = [];
class _TelaFavoritosState extends State<TelaFavoritos> {
  @override
  Widget build(BuildContext context) {
    final favoritos = Favorito.favoritos;
    

    mostrarDetalhes(Games games) {
      Navigator.push(context, MaterialPageRoute(
      builder: (_) => GamesDetalhes(games:games),),);
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Favoritos'),
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
                favoritos[games].nome,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () => mostrarDetalhes(favoritos[games]), 
                child:Image.asset(favoritos[games].foto,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.40,
                fit: BoxFit.contain,
                ),
              ),
              ],
              ),
              );           
          },
            itemCount: favoritos.length,
        ),
 
    ); 
  }
}