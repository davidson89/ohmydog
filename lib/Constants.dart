import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.black87,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.black87,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

final WallPaperDecorationStyle = BoxDecoration(
  image: DecorationImage(image: AssetImage("assets/img/wallpaper.jpg"), fit: BoxFit.cover, alignment:Alignment.topCenter),
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.black12,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black45,
      blurRadius: 40.0,
      offset: Offset(0, 2),
    ),
  ],
);