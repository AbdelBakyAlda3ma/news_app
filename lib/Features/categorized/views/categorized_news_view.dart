import 'package:flutter/material.dart';
import 'package:news_app/Features/categorized/views/categorized_news_view_body.dart';
import 'package:news_app/Features/categorized/views/widgets/categorized_news_view_custom_app_bar.dart';
import 'package:news_app/models/news_category_model.dart';

class CategorizedNewsView extends StatelessWidget {
  final NewsCategoryModel newsCategoryModel;
  const CategorizedNewsView({super.key, required this.newsCategoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CategorizedNewsViewCustomAppBar(newsCategoryModel: newsCategoryModel),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CategorizedNewsViewBody(newsCategoryModel: newsCategoryModel),
      ),
    );
  }
}
