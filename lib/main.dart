import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/servese/news_API.dart';
import 'package:news_app/views/news_view.dart';

void main() async{
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsView(),
    );
  }
}