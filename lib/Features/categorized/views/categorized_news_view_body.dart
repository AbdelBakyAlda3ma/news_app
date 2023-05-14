import 'package:flutter/material.dart';
import 'package:news_app/Features/categorized/views/widgets/categorized_news_item.dart';
import 'package:news_app/models/news_category_model.dart';
import 'package:news_app/utils/news_services.dart';

class CategorizedNewsViewBody extends StatelessWidget {
  final NewsCategoryModel newsCategoryModel;
  const CategorizedNewsViewBody({
    super.key,
    required this.newsCategoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NeswServices.featchCategorizedNews(
            category: newsCategoryModel.category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CategorizedNewsItem(
                    newsItemModel: snapshot.data![index]);
              },
            );
          } else {
            return const Center(
              child: SizedBox(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
