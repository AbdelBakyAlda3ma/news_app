import 'package:flutter/material.dart';
import 'package:news_app/models/news_category_model.dart';

class CategorizedNewsViewCustomAppBar extends StatelessWidget
    with PreferredSizeWidget {
  final NewsCategoryModel newsCategoryModel;
  const CategorizedNewsViewCustomAppBar(
      {super.key, required this.newsCategoryModel});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          Text(
            newsCategoryModel.category,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.orange),
          ),
          Text(
            'News',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
