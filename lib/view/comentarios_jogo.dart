// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import '../model/comentarios.dart';
import '../model/games.dart';
import 'package:projeto/repositories/games_repository.dart';

class ComentariosJogo extends StatefulWidget {
  //Comentar comentar;
  Games games1;
  ComentariosJogo({Key? key, required this.games1}) : super(key: key);

  @override
  State<ComentariosJogo> createState() => _ComentariosJogoState();
}
List<Comentar> visualizar = [];

class _ComentariosJogoState extends State<ComentariosJogo> {
  @override
  Widget build(BuildContext context) {
    final tabelacomentario = ComentariosRepository.tabelacomentario;

    visualizar.clear();
    for (var i = 0; i < tabelacomentario.length; i++) {
      if(tabelacomentario[i].nome == widget.games1.nome){
        visualizar.add(Comentar(nome: tabelacomentario[i].nome, comentario: tabelacomentario[i].comentario,));            
      }
     }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 95, 95),
        title: Text(widget.games1.nome),
        ),
      body: 
        ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return Container(
              color: Colors.grey[200],             
              child: ListTile(
                leading: Icon(Icons.account_circle_rounded, size: 35,),
                title: Text(visualizar[index].comentario),
              ),
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_, __)=> Divider(), 
          itemCount: visualizar.length,
        )
    );
  }

}