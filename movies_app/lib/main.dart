import 'package:flutter/material.dart';
import './homepage.dart';



void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
        primaryColor: Colors.white,
       accentColor: Colors.black
        
      ),
      home: MoviesHomePage(),
    
    );
  }
}