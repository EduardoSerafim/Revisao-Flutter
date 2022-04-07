import 'package:flutter/material.dart';

const _primarySwatch = Colors.pink;
const _appBarColor = Colors.black;
const _appBarTextColor = Colors.pink;
const _appBarIconColor = Colors.pink;

const _inputBorderColor = Colors.black;

//LIGHT THEME

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: _primarySwatch,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.black, onPrimary: Colors.pink)
        ),
   
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: _appBarIconColor),
        backgroundColor: _appBarColor,
        titleTextStyle: TextStyle(color: _appBarTextColor, fontSize: 25)),
    
    
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: _inputBorderColor)
            )
          )
        );


  //DARK THEME

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: _primarySwatch,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.black, onPrimary: Colors.pink)),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.pink),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.pink, fontSize: 25)),
    inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))));
