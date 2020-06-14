import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:ohmydog/AboutPage.dart';

import 'Cadastro.dart';
import 'Constants.dart';
import 'services/CallsAndMessagesService.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}

void main() {
  setupLocator();
  runApp(
    MaterialApp (
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Oh My Dog"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 30.0,
        toolbarOpacity: 0.7,
//        leading: new Icon(Icons.menu),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Oh My God"),
              accountEmail: new Text("ohmygod@gmail.com"),
              decoration: BoxDecoration(color: Colors.black),
              currentAccountPicture: new CircleAvatar(backgroundImage: Image.asset("assets/img/logo.png").image, backgroundColor: Colors.white,),
            ),
            new ListTile(
              title: new Text("Pedidos"),
              leading: new Icon(Icons.fastfood),),
            new ListTile(
              title: new Text("Cadastro"),
              leading: new Icon(Icons.edit),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CadastroPage())),
            ),
            new ListTile(
              title: new Text("Relatório"),
              leading: new Icon(Icons.show_chart),),
            new ListTile(
              title: new Text("Sobre"),
              leading: new Icon(Icons.person),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AboutPage(_service))),
            ),
            new ListTile(
              title: new Text("Fechar"),
              leading: new Icon(Icons.close),
              onTap: ()=> SystemNavigator.pop(),
            ),
            Container(

            )
          ],
        ),
      ),
      body: Container(
        decoration: WallPaperDecorationStyle,
        child: null /* add child content here */,
      ),
    );
  }

}
