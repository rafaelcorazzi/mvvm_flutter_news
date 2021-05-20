import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mvvm_flutter_news/models/newsArticle.dart';

class NewsService {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/everything?q=tesla&from=2021-04-20&sortBy=publishedAt&apiKey=e298589190c44e39a913bf66cacd7e35";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception("Failed to get top news");
    }
  }
}
