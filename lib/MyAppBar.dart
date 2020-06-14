import 'package:flutter/material.dart';

class MyAppBar extends AppBar {

  String pageTitle;

  MyAppBar(this.pageTitle): super(backgroundColor: Colors.black, centerTitle: true, title: Text(pageTitle));

}