import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';
class NewsApi {
final Dio dio;
  NewsApi(this.dio);
  Future<List<ArticalModel>> getNews({required category})async{
    try{

    var response = await dio.get('https://gnews.io/api/v4/top-headlines?category=$category&lang=ar&country=Egypt&max=10&apikey=745b9ed9d69095cf5d06b92592aa1063');
    
    Map< String, dynamic> articalMap = response.data;

    List<dynamic> articalList = articalMap['articles'];

    List<ArticalModel> articalOpjects =[];
  
    for (var artical in articalList) {
      ArticalModel articalModel = ArticalModel(
        image:artical['image'] ,
        title: artical['title'],
        subTitle: artical['description'],
        url: artical['url'],
      );
        articalOpjects.add(articalModel);
    }
    return articalOpjects;
  }
  catch(e){
    return [];
  }
  }
}
  