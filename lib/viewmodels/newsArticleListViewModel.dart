import 'package:mvvm_flutter_news/models/newsArticle.dart';
import 'package:mvvm_flutter_news/services/news_service.dart';
import 'package:mvvm_flutter_news/viewmodels/newsArticleViewModel.dart';
import 'package:flutter/material.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel>? articles = [];

  NewsArticleListViewModel() {
    _populateTopHeadlines();
  }
  Future<void> _populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await NewsService().fetchTopHeadlines();
    articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    notifyListeners();
  }
}
