import 'package:flutter/material.dart';
import 'package:news_app/models/news_item_model.dart';
import 'package:news_app/utils/news_services.dart';

class RecomendedItem extends StatelessWidget {
  final NewsItemModel newsItem;
  const RecomendedItem({
    super.key,
    required this.newsItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: newsItem.imgUrl == null
                ? null
                : SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                      aspectRatio: 1.8,
                      child: Image.network(
                        newsItem.imgUrl!,
                        fit: BoxFit.fill,
                        errorBuilder: (context, _, __) {
                          return const Icon(
                            Icons.error,
                            color: Colors.white,
                          );
                        },
                      ),
                    ),
                  ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () async {
              try {
                await NeswServices.launchNewsUrl(newsItem.url!);
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(e.toString()),
                  ),
                );
              }
            },
            child: Text(
              newsItem.title ?? '',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Text(
            newsItem.description ?? '',
            maxLines: 3,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
