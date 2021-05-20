import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mvvm_flutter_news/models/newsArticle.dart';

class NewsService {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    debugPrint("get result");

    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=br&apiKey=e298589190c44e39a913bf66cacd7e35');
    final response = await http.get(url);
    debugPrint(response.body);
    if (response.statusCode == 200) {
      var result = convert.jsonDecode(response.body);

      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception("Failed to get top news");
    }
  }
}
