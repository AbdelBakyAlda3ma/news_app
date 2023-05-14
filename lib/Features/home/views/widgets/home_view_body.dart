import 'package:flutter/material.dart';
import 'package:news_app/Features/home/views/widgets/category_list_view.dart';
import 'package:news_app/Features/home/views/widgets/recomended_list_view.dart';
import 'package:news_app/models/news_item_model.dart';

class HomeViewBody extends StatelessWidget {
  final List<NewsItemModel> newsList;
  const HomeViewBody({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CategoryListView(),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Recomended News',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Flexible(
              child: RecomendedListView(
                news: newsList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
