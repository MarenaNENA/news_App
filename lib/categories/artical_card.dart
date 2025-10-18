import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/views/web_view.dart';

class ArticalCard extends StatelessWidget {
   ArticalCard({super.key, required this.articalModel });
  ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){ Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => WebView(url: articalModel.url),
          ),
      );
      },
      child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(8),
            child: Image.network(
              articalModel.image ?? 'https://www.sarahanews.net/wp-content/uploads/2025/01/373826_72_1696884540-1.jpg' ,
              fit : BoxFit.fill,
               errorBuilder: (context, error, stackTrace) {
              return Image.network('https://mir-s3-cdn-cf.behance.net/projects/404/f0285e59126823.Y3JvcCw5NjIsNzUzLDAsMjA2.jpg'); // صورة افتراضية عند الفشل
            },
              ),
          ),
        ),
        Text(
        articalModel.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
         color: Colors.black,
         fontWeight: FontWeight.bold,
         fontSize: 20,
        ),
       ),
        Text(
        articalModel.subTitle ?? '[]',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
         color: Colors.grey,
         fontSize: 16,
         )
       ),
      ]
      ),
    );
  }
}