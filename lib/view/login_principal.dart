// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto/view/recuperar_senha.dart';
import 'cadastro.dart';

class LoginPrincipal extends StatefulWidget {
  const LoginPrincipal
({super.key});

  @override
  State<LoginPrincipal
> createState() => _LoginPrincipalState();
}

class _LoginPrincipalState extends State<LoginPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding( 
        padding: EdgeInsets.only(top: 60, left:40, right: 40),

        //Colocando o Logo
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("lib/images/AranduGames2.jpg"),
          ),
         
          SizedBox(
            height: 20,
          ),

          //Colocando o campo de texto "E-MAIL"
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'E-mail',
              labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
          
            SizedBox(
            height: 10,
          ),
         
          //Colocando o campo de texto "Senha"
          TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                color:  Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
            ),

            //Botão Recuperar Senha
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Color.fromARGB(255, 33, 90, 36)),
                child: Text('Recuperar senha',
                ),
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecuperarSenha()
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1,1],
                  colors: [
                    Colors.black,
                    Color.fromARGB(0, 38, 105, 7),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Icon(
                            Icons.login,
                            color: Colors.white,
                            size:24.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 't1').then((_) => setState(() {}));
                  },
                ),
              ),
            ),

            //Botão de Cadastrar
            SizedBox(
              height: 40,
            ),
              Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Color.fromARGB(255, 33, 90, 36)),
                child: Text('Cadastre-se',
                ),
                onPressed:() {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cadastro()
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    ),
    );
  }
}