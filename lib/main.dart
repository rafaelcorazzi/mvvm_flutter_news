import 'package:flutter/material.dart';
import 'package:mvvm_flutter_news/pages/newList.dart';
import 'package:mvvm_flutter_news/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "News Today",
        home: ChangeNotifierProvider(
            create: (context) => NewsArticleListViewModel(),
            child: NewsList()));
  }
}
