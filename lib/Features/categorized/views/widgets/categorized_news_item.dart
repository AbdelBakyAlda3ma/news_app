import 'package:flutter/material.dart';
import 'package:news_app/models/news_item_model.dart';
import 'package:news_app/utils/news_services.dart';

class CategorizedNewsItem extends StatelessWidget {
  final NewsItemModel newsItemModel;
  const CategorizedNewsItem({super.key, required this.newsItemModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: GestureDetector(
        onTap: () async {
          try {
            await NeswServices.launchNewsUrl(newsItemModel.url!);
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(e.toString()),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(newsItemModel.auther!,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsItemModel.description!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
