// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 95, 95),
        title: Text('Sobre'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
         child: ListView(
          children: <Widget>[
             Text(
              "Desenvolvedores:",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
             SizedBox(
              height: 20,
            ),
          Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset('lib/images/Rodrigao.jpeg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
          ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rodrigo Couto Mazzer - 834435",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset('lib/images/Icarus.jpeg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Icaro Squassoni Pallone - 834585",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
             SizedBox(
              height: 60,
            ),
            Text(
              "Tema: Biblioteca de jogos",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
             SizedBox(
              height: 60,
            ),
            Text(
              "O objetivo do nosso aplicativo (Arandu Games) sendo uma biblioteca de jogos é fornecer aos usuários uma plataforma centralizada para gerenciar, organizar e acessar os jogos cadastrados. Ao oferecer uma interface intuitiva e fácil de usar, permitindo que os usuários descubram novos jogos, acompanhem seus favoritos e toda a biblioteca salva de jogos. Também pode ajudar a otimizar a experiência de jogos, permitindo que os usuários se comuniquem e compartilhem experiências através dos comentários.",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
              
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 60,
            ),
          ],
      ),
      ),
    );
  }
}