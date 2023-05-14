import 'package:flutter/material.dart';
import 'package:news_app/Features/data/news_categories_list.dart';

import 'package:news_app/Features/home/views/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newsCategoryList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            newsCategoryModel: newsCategoryList[index],
          );
        },
      ),
    );
  }
}
