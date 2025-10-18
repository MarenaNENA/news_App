import 'package:flutter/material.dart';
import 'package:news_app/categories/artical_card.dart';
import 'package:news_app/models/artical_model.dart';

class NewsList extends StatelessWidget {
  
  final Future<List<ArticalModel>> future;

  const NewsList({super.key, required this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: Text('Thare are an error 😢')),
          );
        }

        final articals = snapshot.data!;
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ArticalCard(articalModel: articals[index]);
            },
            childCount: articals.length,
          ),
        );
      },
    );
  }
}
