import 'package:flutter/material.dart';
import 'package:news_app/Features/categorized/views/categorized_news_view.dart';
import 'package:news_app/models/news_category_model.dart';

class CategoryItem extends StatelessWidget {
  final NewsCategoryModel newsCategoryModel;
  const CategoryItem({super.key, required this.newsCategoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CategorizedNewsView(newsCategoryModel: newsCategoryModel),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: SizedBox(
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    newsCategoryModel.image,
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      newsCategoryModel.category,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
