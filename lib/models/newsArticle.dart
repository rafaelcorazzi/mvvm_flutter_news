class NewsArticle {
  late final String title;
  late final String description;
  late final String urlToImage;
  late final String url;

  NewsArticle(
      {required this.title,
      required this.description,
      required this.urlToImage,
      required this.url});

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
        title: json['title'],
        description: json['description'],
        urlToImage: json['urlToImage'],
        url: json['url']);
  }
}
