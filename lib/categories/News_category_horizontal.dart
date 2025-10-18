import 'package:flutter/material.dart';
import 'package:news_app/models/category_horizontal_model.dart';
import 'package:news_app/views/catigoryView.dart';

class NewsCategoryHorizontal extends StatelessWidget {

  NewsCategoryHorizontal({super.key, required this.category});
  CategoryHorizontalModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
         MaterialPageRoute(
          builder: (context){
            return  Catigoryview(category: category.title,);
          })
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          height: 50,
          width:  200,
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill
              ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(child: Text(category.title,
          style: TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20),
            )),
        ),
      ),
    );
  }
}