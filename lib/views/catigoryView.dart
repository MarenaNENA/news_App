import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/models/category_horizontal_model.dart';
import 'package:news_app/servese/news_API.dart';
import 'package:news_app/views/news_List.dart';

class Catigoryview extends StatefulWidget {

   Catigoryview({required this.category});
   
   String category;

  @override
  State<Catigoryview> createState() => _CatigoryviewState();
}

class _CatigoryviewState extends State<Catigoryview> {
  
  late Future<List<ArticalModel>> future;
  
  @override
  void initState() {
    future = NewsApi(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: CustomScrollView(
      slivers: [
          NewsList(future: future)
      ]
    )
    );
  }
}