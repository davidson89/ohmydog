import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ohmydog/MyAppBar.dart';
import 'package:ohmydog/services/CallsAndMessagesService.dart';

class AboutPage extends StatelessWidget {

  CallsAndMessagesService service;

  AboutPage(this.service);

  @override
  Widget build(BuildContext context) {
    final phone = "+55 11 99322-3084";
    final email = "davidson_or@hotmail.com";
    return Scaffold(
      appBar: new MyAppBar("Sobre"),
      body: ListView(
          children: <Widget>[
            Container(
              child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Center(
                            child: new CircleAvatar(
                              backgroundImage: new AssetImage("assets/img/me.png"),
                              backgroundColor: Colors.white,
                              radius: 50.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Wrap(
                              children: <Widget>[
                                new Text("\t\t\tEste aplicativo foi desenvolvido por Davidson Rodrigues, programador backend, 30 anos, casado, "
                                    "formado em Ciências da Computação pela Universidade Federal do ABC, apaixonado por tecnologia!",
                                  style: TextStyle(color: Colors.black54,
                                      fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                              ],
                            )
                          ),
                        ],
                      ),
                      Container(
      //                  padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Wrap(

                          children: <Widget>[
                            new Text("Contato:",
                              style: TextStyle(color: Colors.black54,
                                  fontSize: 22.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            ListTile(
                              title: RaisedButton(
                                elevation: 0.0,
                                disabledElevation: 0.0,
                                child: Text(email, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue, decoration: TextDecoration.underline), ),
                                onPressed: () => service.sendEmail(email),
                              ),
                              leading: new Icon(Icons.email),
                            ),
                            ListTile(
                              title: RaisedButton(
                                elevation: 0.0,
                                disabledElevation: 0.0,
      //                          color: Colors.white,
                                child: Text(phone, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue, decoration: TextDecoration.underline), ),
                                onPressed: () => service.call(phone),
                              ),
                              leading: new Icon(Icons.phone),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                ),
              )
  ])
    );
  }

}