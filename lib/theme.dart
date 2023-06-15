import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    primaryColor: Colors.white,
    primarySwatch: Colors.blueGrey,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.lightGreen),
    ),
  );
}