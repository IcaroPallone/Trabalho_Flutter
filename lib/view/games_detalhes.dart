// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_interpolation_to_compose_strings, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:projeto/repositories/games_repository.dart';
import '../model/games.dart';
import 'comentarios_jogo.dart';

class GamesDetalhes extends StatefulWidget {
  Games games;
  GamesDetalhes({Key? key, required this.games}) : super(key: key);

  @override
  State<GamesDetalhes> createState() => _GamesDetalhesState();
}

class _GamesDetalhesState extends State<GamesDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 95, 95),
        title: Text(widget.games.nome),
        ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: imagem(),
          ),
          Expanded(
            flex: 5,
            child: texto(),
          ),
        ],
      ),

    );    
  }

  imagem() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(100, 40, 100, 0),  
        child: Column(
        children:[
          Image.asset(widget.games.foto,
          width: MediaQuery.of(context).size.width * 0.60,
          height: MediaQuery.of(context).size.height * 0.30,
          fit: BoxFit.contain,
        ),
        ],
        
        ),  
    );
  }

  texto() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(40, 40 ,40, 0),  

        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('Categoria: '+ widget.games.categoria,
            style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
            ),
          ),
          Text('Plataformas: '+ widget.games.plataforma,
            style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
            ),
          ),
          Text('Sobre: '+ widget.games.sobre,
            style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
            ),
          ),
          SizedBox(
              height: 33,
          ),
          
          Center(
            child: ElevatedButton(
              onPressed: ()  {
                mostrarDetalhes2(Games games1) {
                Navigator.push(context, MaterialPageRoute(
                builder: (_) => ComentariosJogo(games1:games1),),);
                }
                mostrarDetalhes2(widget.games);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Background color
                onPrimary: Colors.black, // Text Color (Foreground color)
              ),
              child: 
              Text('Visualizar Comentários',),
            ),
          ),
        ],
        
        ),  
    );
  }

}