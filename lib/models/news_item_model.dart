import 'package:flutter/material.dart';

class NewsItemModel {
  String? title;
  String? description;
  String? auther;
  String? source;
  String? category;
  String? imgUrl;
  String? url;
  String? puplishDate;
  NewsItemModel({
    @required this.auther,
    @required this.category,
    @required this.description,
    @required this.imgUrl,
    @required this.puplishDate,
    @required this.source,
    @required this.title,
    @required this.url,
  });

  factory NewsItemModel.recomendedNews(dynamic data) {
    // ignore: missing_required_param
    return NewsItemModel(
      title: data['title'],
      auther: data['auther'],
      description: data['description'],
      imgUrl: data['urlToImage'],
      puplishDate: data['publishedAt'],
      source: data['source']['name'],
      url: data['url'],
    );
  }

  factory NewsItemModel.categorizedNews(dynamic data) {
    // ignore: missing_required_param
    return NewsItemModel(
      auther: data['name'],
      description: data['description'],
      url: data['url'],
    );
  }
}
