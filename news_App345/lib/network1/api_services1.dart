
import 'package:dio/dio.dart';
import '../model/Article.dart';
class api_service{
  Dio dio=Dio();
  Future<List<Article>> getnews() async{
    Response response= await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=d8daa306cd5842dc80a37a8d592b6203");
    Map<String,dynamic>json=response.data;
    List<Article>articles=[];
    for(var item in json["articles"] ){
      articles.add(
          Article(title: item['title'],
              description: item['description'],
              urlToImage: item['urlToImage'], url: item['url']),
      );

    }
    return articles;
  }
}
main()async{
  api_service Api_services=api_service();
  List<Article> x= await Api_services.getnews();
  print(x);
}