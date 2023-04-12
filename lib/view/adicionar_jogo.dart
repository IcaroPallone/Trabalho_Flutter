// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../model/games.dart';
import '../repositories/games_repository.dart';

class AdicionarJogo extends StatefulWidget {
  const AdicionarJogo({super.key});

  @override
  State<AdicionarJogo> createState() => _AdicionarJogoState();
}

class _AdicionarJogoState extends State<AdicionarJogo> {
  String txtNome = '';
  String txtFoto = '';
  String txtCategoria = '';
  String txtPlataforma = '';
  String txtSobre = '';

 @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tabela = GamesRepository.tabela;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 95, 95),
        title: Text('Adicionar Jogo'),
        /*leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },*/
        ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (text){
                txtNome = text;
              },
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Nome do Jogo',
                labelStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              onChanged: (text){
                txtFoto = text;
              },
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Imagem',
                labelStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              onChanged: (text){
                txtCategoria = text;
              },
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Categoria',
                labelStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              onChanged: (text){
                txtPlataforma = text;
              },
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Plataformas',
                labelStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              onChanged: (text){
                txtSobre = text;
              },
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Sobre',
                labelStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //EVENTO DE PRESSIONAMENTO DO BOTÃO
                if (txtNome.isNotEmpty && txtFoto.isNotEmpty && txtCategoria.isNotEmpty && txtPlataforma.isNotEmpty && txtSobre.isNotEmpty) {
                    setState(() {
                      tabela.add(Games(nome: txtNome, foto: txtFoto, categoria: txtCategoria, plataforma: txtPlataforma, sobre: txtSobre,));
});
                    mensagem(
                      'Jogo adicionado com sucesso.',
                      Colors.blueAccent.shade100,
                    );
                } 
                else {
                  mensagem(
                    'Os campos não podem ser vazios.',
                    Colors.redAccent.shade100,
                  );
                }
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),

      ),
    );
  }


mensagem(msg, cor) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        //: TextAlign.center,
      ),
      duration: Duration(seconds: 2),
      backgroundColor: cor,
    ));
  }
}