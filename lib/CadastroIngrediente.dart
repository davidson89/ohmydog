import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';
import 'package:ohmydog/domain/Ingrediente.dart';

import 'Constants.dart';
import 'MyAppBar.dart';

class CadastroIngrediente extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CadastroIngredienteState();
  }

}

class CadastroIngredienteState extends State<CadastroIngrediente> {

  Ingrediente ingrediente = new Ingrediente();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new MyAppBar("Cadastro Ingrediente"),
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: WallPaperDecorationStyle,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            getContainerLabel("Nome"),
//            SizedBox(height: 10.0),
            getContainerTextfieldNome(),
            SizedBox(height: 20.0),
            getContainerLabel("Valor"),
            getContainerTextfieldValor(),
            SizedBox(height: 30.0),
            ProgressButton(
              defaultWidget: Text('Salvar', style: kLabelStyle),
              borderRadius: 30.0,
//              normalWidget: const Text('I am a button'),
              progressWidget: const CircularProgressIndicator(),
              color: Colors.grey,
              animate: false,
              width: 196,
              height: 50,
              onPressed: () async {
                int score = await Future.delayed(
                    const Duration(milliseconds: 3000), () => 42);
                // After [onPressed], it will trigger animation running backwards, from end to beginning
                return () {
                  // Optional returns is returning a function that can be called
                  // after the animation is stopped at the beginning.
                  // A best practice would be to do time-consuming task in [onPressed],
                  // and do page navigation in the returned function.
                  // So that user won't missed out the reverse animation.
                };
              },
            ),
          ],
        ),
      )
    );
  }

  Container getContainerLabel(String label) {
    return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(label, style: kLabelStyle, textAlign: TextAlign.left,),
          );
  }

  Container getContainerTextfieldNome() {
    return Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 60.0,
            child:TextField(
              style:  TextStyle(color: Colors.black, fontFamily: 'OpenSans', fontSize: 22.0),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.edit,
                  color: Colors.black87,
                ),
                hintText: 'preencha o nome',
                hintStyle: kHintTextStyle,
              ),
            ),
          );
  }


  Container getContainerTextfieldValor() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 60.0,
      child:TextField(
        style:  TextStyle(color: Colors.black, fontFamily: 'OpenSans', fontSize: 22.0),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.attach_money,
            color: Colors.black87,
          ),
          hintText: 'preencha o valor',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

}