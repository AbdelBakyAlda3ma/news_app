import 'package:flutter/material.dart';
import 'package:news_app/Features/home/views/widgets/recomended_item.dart';
import 'package:news_app/models/news_item_model.dart';

class RecomendedListView extends StatelessWidget {
  final List<NewsItemModel> news;
  const RecomendedListView({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: news.length,
        itemBuilder: (context, index) {
          return RecomendedItem(newsItem: news[index]);
        });
  }
}
