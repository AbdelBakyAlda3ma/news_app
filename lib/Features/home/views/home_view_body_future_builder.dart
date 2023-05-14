import 'package:flutter/material.dart';
import 'package:news_app/Features/home/views/widgets/home_view_body.dart';
import '../../../utils/news_services.dart';

class HomeViewBodyFutureBuilder extends StatelessWidget {
  const HomeViewBodyFutureBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NeswServices.fetchRecomendedNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return HomeViewBody(
            newsList: snapshot.data!,
          );
        } else {
          return const Center(
            child: SizedBox(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
