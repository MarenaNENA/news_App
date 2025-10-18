import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/categories/News_category_horizontal.dart';
import 'package:news_app/categories/artical_card.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/models/category_horizontal_model.dart';
import 'package:news_app/servese/news_API.dart';
import 'package:news_app/views/news_List.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  final List<CategoryHorizontalModel> categoryHorizontal = const [
    CategoryHorizontalModel(image: 'assets/business.avif', title: 'business'),
    CategoryHorizontalModel(image: 'assets/entertaiment.avif', title: 'entertainment'),
    CategoryHorizontalModel(image: 'assets/technology.jpeg', title: 'technology'),
    CategoryHorizontalModel(image: 'assets/health.avif', title: 'health'),
    CategoryHorizontalModel(image: 'assets/science.avif', title: 'science'),
    CategoryHorizontalModel(image: 'assets/sports.avif', title: 'sports'),
  ];

  late Future<List<ArticalModel>> future;

  @override
  void initState() {
    super.initState();
    future = NewsApi(Dio()).getNews(category: 'general');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('News', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            Text('cloud', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: CustomScrollView(
       slivers: [ SliverToBoxAdapter(
               child: SizedBox(
                height: 120,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:categoryHorizontal.length ,
                  itemBuilder: (context, index) {
                   return NewsCategoryHorizontal(category:categoryHorizontal[index]);
                  } ,
                  ),
               ),
       ),

          NewsList(future: future),
        ],
      ),
    );
  }
}

