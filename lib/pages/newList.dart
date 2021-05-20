import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_flutter_news/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Top News"),
        ),
        body: ListView.builder(
            itemCount: vm.articles!.length,
            itemBuilder: (context, index) {
              final article = vm.articles![index];
              return ListTile(
                  leading: Container(
                      width: 100,
                      height: 100,
                      child: article.imageUrl == null
                          ? const Text("no image")
                          : Image.network(article.imageUrl.toString())),
                  title: Text(article.title));
            }));
  }
}
