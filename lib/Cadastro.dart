import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ohmydog/services/CallsAndMessagesService.dart';

import 'CadastroIngrediente.dart';
import 'Constants.dart';
import 'MyAppBar.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final phone = "+55 11 99322-3084";
    final email = "davidson_or@hotmail.com";
    return Scaffold(
        appBar: new MyAppBar("Cadastro"),
        body: Container(
            decoration: WallPaperDecorationStyle,
            child:  GridView.count(crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        child: FlatButton(
                            child: new Text("Lanches", style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold)),
                            onPressed: () => print("Teste 1"),
                        ),
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: Image.asset("assets/img/humburger.jpeg").image,
                            fit: BoxFit.cover
                          ) 
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          child: new Text("Bebidas", style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold)),
                          onPressed: () => print("Teste 2")
                        ),
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: Image.asset("assets/img/bebidas.jpg").image,
                                fit: BoxFit.cover
                            )
                        ) ,
                      ),
                      Container(
                        child: FlatButton(
                            child: new Text("Outros", style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold)),
                            onPressed: () => print("Teste 3")
                        ),
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: Image.asset("assets/img/batata.jpg").image,
                                fit: BoxFit.cover
                            )
                        ) ,
                      ),
                      Container(
                        child: FlatButton(
                            child: new Text("Ingredientes", style: TextStyle(fontSize: 19.0, color: Colors.white, fontWeight: FontWeight.bold)),
                            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CadastroIngrediente()))
                        ),
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: Image.asset("assets/img/ingredientes.jpg").image,
                                fit: BoxFit.cover
                            )
                        ) ,
                      ),
                  ],
                )
            ));
  }
}
